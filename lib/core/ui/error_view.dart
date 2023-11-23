import 'package:flutter/material.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/widget.dart';

final class ErrorView extends StatelessWidget {
  final Function onRetry;

  const ErrorView({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'エラーが発生しました'.i18n,
          style: context.textTheme.headlineMedium,
        ),
        const SizedBox(height: 64),
        ElevatedButton(
          onPressed: () => onRetry(),
          child: Text('リトライ'.i18n),
        ),
      ],
    ).align(Alignment.center);
  }
}
