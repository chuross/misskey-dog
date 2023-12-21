import 'package:flutter/material.dart';

final class CoreImageWeb extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;

  const CoreImageWeb({super.key, required this.imageUrl, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
