import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:misskey_dog/core/extension/widget.dart';

@RoutePage()
final class ImageDetailScreen extends StatelessWidget {
  final String imageUrl;

  const ImageDetailScreen({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blueGrey[700],
          child: InteractiveViewer(
            minScale: 1.0,
            maxScale: 5.0,
            panEnabled: true,
            child: Hero(
              tag: imageUrl,
              child: Image.network(imageUrl),
            ),
          ).align(Alignment.center),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0.0,
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.blueGrey[700],
          ),
        ),
      ],
    );
  }
}
