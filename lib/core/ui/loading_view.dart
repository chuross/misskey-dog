import 'package:flutter/material.dart';
import 'package:misskey_dog/core/extension/widget.dart';

final class LoadingView extends StatelessWidget {
  final double? strokeWidth;

  const LoadingView({super.key, this.strokeWidth});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: strokeWidth ?? 4.0,
    ).align(Alignment.center);
  }
}
