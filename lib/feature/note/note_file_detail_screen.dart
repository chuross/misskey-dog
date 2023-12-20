import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:misskey_dog/core/extension/string.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/model/note/note_file.dart';

final class NoteFileDetailRoute extends GoRouteData {
  final ({List<NoteFile> files, NoteFile initialFile}) $extra;

  NoteFileDetailRoute({required this.$extra});

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      fullscreenDialog: true,
      child: NoteFileDetailScreen(files: $extra.files, initialFile: $extra.initialFile),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}

final class NoteFileDetailScreen extends HookWidget {
  final List<NoteFile> files;
  final NoteFile initialFile;

  const NoteFileDetailScreen({super.key, required this.files, required this.initialFile});

  @override
  Widget build(BuildContext context) {
    final controller = usePageController(initialPage: files.indexOf(initialFile));

    return Stack(
      children: [
        Container(color: Colors.blueGrey[700]),
        PageView.builder(
          controller: controller,
          itemCount: files.length,
          itemBuilder: (context, index) {
            final file = files[index];

            return switch (file) {
              final file when file.isImage => _ImageView(
                  url: file.url,
                  thumbnailUrl: file.thumbnailUrl,
                ),
              _ => const SizedBox.shrink(),
            };
          },
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

final class _ImageView extends HookWidget {
  final String url;
  final String? thumbnailUrl;

  const _ImageView({super.key, required this.url, this.thumbnailUrl});

  @override
  Widget build(BuildContext context) {
    final controller = useMemoized(() => TransformationController(), const []);
    final currentScale = useState(1.0);

    useEffect(() {
      controller.addListener(() {
        currentScale.value = controller.value.getMaxScaleOnAxis();
      });

      return () => controller.dispose();
    }, const []);

    return InteractiveViewer(
      transformationController: controller,
      minScale: 1.0,
      maxScale: 5.0,
      child: Hero(
        tag: url,
        flightShuttleBuilder: (flightContext, animation, flightDirection, fromHeroContext, toHeroContext) {
          if (flightDirection == HeroFlightDirection.pop) {
            return const SizedBox.shrink();
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
              key: url.toKey(),
              resizeDuration: null,
              direction: DismissDirection.vertical,
              onDismissed: (_) => context.pop(),
              child: CachedNetworkImage(
                imageUrl: url,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.contain,
                fadeInDuration: Duration.zero,
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
    );
  }
}
