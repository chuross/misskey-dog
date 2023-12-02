import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:misskey_dog/core/extension/string.dart';
import 'package:misskey_dog/core/extension/widget.dart';

@RoutePage()
final class ImageDetailScreen extends HookWidget {
  final String imageUrl;

  const ImageDetailScreen({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useMemoized(() => TransformationController());
    final currentScale = useState(1.0);

    useEffect(() {
      controller.addListener(() {
        currentScale.value = controller.value.getMaxScaleOnAxis();
      });

      return () => controller.dispose();
    }, const []);

    return Stack(
      children: [
        InteractiveViewer(
          transformationController: controller,
          minScale: 1.0,
          maxScale: 5.0,
          child: Container(
            color: Colors.blueGrey[700],
            child: Hero(
              tag: imageUrl,
              flightShuttleBuilder: (flightContext, animation, flightDirection, fromHeroContext, toHeroContext) {
                if (flightDirection == HeroFlightDirection.pop) {
                  return const SizedBox();
                }

                return DefaultTextStyle(
                  style: DefaultTextStyle.of(toHeroContext).style,
                  child: toHeroContext.widget,
                );
              },
              child: GestureDetector(
                onDoubleTap: () => controller.value = Matrix4.identity(),
                child: AbsorbPointer(
                  absorbing: currentScale.value != 1.0,
                  child: Dismissible(
                    key: imageUrl.toKey(),
                    resizeDuration: null,
                    direction: DismissDirection.vertical,
                    onDismissed: (_) => context.router.pop(),
                    child: Image.network(imageUrl),
                  ),
                ),
              ),
            ).align(Alignment.center),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0.0,
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}