import 'package:flutter/material.dart';
import 'package:misskey_dog/core/extension/widget.dart';

final class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator().align(Alignment.center);
  }
}
