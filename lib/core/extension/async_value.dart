import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dog/core/logger/logger_provider.dart';
import 'package:misskey_dog/core/ui/error_view.dart';
import 'package:misskey_dog/core/ui/loading_view.dart';

extension AsyncValueExt<T> on AsyncValue<T> {
  Widget whenScreenLoading({
    required WidgetRef ref,
    required Function onRetry,
    required Function(T) data,
  }) {
    final log = ref.watch(logProvider);

    return when(
      data: (d) => data(d),
      loading: () => const LoadingView(),
      error: (e, s) {
        log.e('loading error', error: e, stackTrace: s);
        return ErrorView(onRetry: onRetry);
      },
    );
  }

  Widget whenPartialLoading({
    required Function(T) data,
  }) {
    return when(
      data: (d) => data(d),
      loading: () => const LoadingView(),
      error: (e, s) {
        return const SizedBox.shrink();
      },
    );
  }
}
