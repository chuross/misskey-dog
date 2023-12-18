import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/widget.dart';

final class ScreenLoadingView extends StatelessWidget {
  final AsyncValue<dynamic> value;
  final Function onRetry;

  const ScreenLoadingView({super.key, required this.value, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return switch (value) {
      AsyncError(:final error, :final stackTrace) => _ErrorView(
          error: error,
          stackTrace: stackTrace,
          onRetry: onRetry,
        ),
      _ => const CircularProgressIndicator(
          strokeWidth: 4.0,
        ).align(Alignment.center),
    };
  }
}

final class _ErrorView extends StatelessWidget {
  final Object error;
  final StackTrace stackTrace;
  final Function onRetry;

  const _ErrorView({required this.error, required this.stackTrace, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'エラーが発生しました'.i18n,
          style: context.textTheme.headlineSmall,
        ),
        Text(error.toString(), style: context.textTheme.labelSmall),
        Text(stackTrace.toString(), style: context.textTheme.labelSmall),
        const SizedBox(height: 64),
        ElevatedButton(
          onPressed: () => onRetry(),
          child: Text('リトライ'.i18n),
        ),
      ],
    ).align(Alignment.center);
  }
}
