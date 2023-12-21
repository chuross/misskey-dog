import 'package:flutter/material.dart';

final class WebImageView extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;

  const WebImageView({super.key, required this.imageUrl, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
