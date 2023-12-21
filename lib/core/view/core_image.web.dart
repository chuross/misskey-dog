// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui_web' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:misskey_dog/core/extension/object.dart';

final class CoreImageWeb extends HookWidget {
  final String imageUrl;
  final double? width;
  final double? height;

  const CoreImageWeb({super.key, required this.imageUrl, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    final viewId = "web_image_$imageUrl";

    useEffect(() {
      ui.platformViewRegistry.registerViewFactory(
        viewId,
        (_) => ImageElement(
          src: imageUrl,
          width: width?.map((p) => p.toInt()),
          height: height?.map((p) => p.toInt()),
        )..style.objectFit = 'contain',
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
