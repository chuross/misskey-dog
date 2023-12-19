import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:misskey_dog/core/extension/string.dart';
import 'package:misskey_dog/core/extension/widget.dart';

final class ImageDetailRoute extends GoRouteData {
  final String imageUrl;
  final String? thumbnailUrl;

  const ImageDetailRoute({
    required this.imageUrl,
    this.thumbnailUrl,
  });

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      fullscreenDialog: true,
      child: ImageDetailScreen(imageUrl: imageUrl, thumbnailUrl: thumbnailUrl),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}

final class ImageDetailScreen extends HookWidget {
  final String imageUrl;
  final String? thumbnailUrl;

  const ImageDetailScreen({
    super.key,
    required this.imageUrl,
    this.thumbnailUrl,
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
        Container(color: Colors.blueGrey[700]),
        InteractiveViewer(
          transformationController: controller,
          minScale: 1.0,
          maxScale: 5.0,
          child: Hero(
            tag: thumbnailUrl ?? imageUrl,
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
              onDoubleTapDown: (doubleTapDetails) {
                if (controller.value != Matrix4.identity()) {
                  controller.value = Matrix4.identity();
                } else {
                  final position = doubleTapDetails.globalPosition;
                  controller.value = Matrix4.identity()
                    ..translate(-position.dx, -position.dy)
                    ..scale(2.0);
                }
              },
              child: AbsorbPointer(
                absorbing: currentScale.value != 1.0,
                child: Dismissible(
                  key: imageUrl.toKey(),
                  resizeDuration: null,
                  direction: DismissDirection.vertical,
                  onDismissed: (_) => context.pop(),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    width: double.infinity,
                    height: double.infinity,
                    filterQuality: FilterQuality.high,
                    placeholder: (_, __) => switch (thumbnailUrl) {
                      final thumbnailUrl? => CachedNetworkImage(
                          imageUrl: thumbnailUrl,
                          fit: BoxFit.contain,
                        ),
                      _ => const CircularProgressIndicator(),
                    },
                  ),
                ),
              ),
            ),
          ).align(Alignment.center),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
