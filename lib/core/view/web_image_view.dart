// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui_web' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final class WebImageView extends HookWidget {
  final String imageUrl;
  final double? width;
  final double? height;

  const WebImageView({super.key, required this.imageUrl, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return const SizedBox.shrink();
    }

    final viewId = "web_image_$imageUrl";

    useEffect(() {
      ui.platformViewRegistry.registerViewFactory(
        viewId,
        (_) => ImageElement()..src = imageUrl,
      );

      return null;
    }, [imageUrl]);

    return SizedBox(
      width: width,
      height: height,
      child: HtmlElementView(
        viewType: viewId,
      ),
    );
  }
}
