import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:misskey_dog/core/view/core_image.stub.dart' if (dart.library.html) 'package:misskey_dog/core/view/web_image_view.dart';

final class CoreImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;

  const CoreImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? CoreImageWeb(
            imageUrl: imageUrl,
            width: width,
            height: height,
          )
        : Image(
            image: CachedNetworkImageProvider(imageUrl),
            fit: fit,
            width: width,
            height: height,
          );
  }
}
