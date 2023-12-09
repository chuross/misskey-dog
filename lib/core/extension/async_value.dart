import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dog/core/view/loading_view.dart';

extension AsyncValueExt<T> on AsyncValue<T> {
  Widget whenPartialLoading({
    required Function(T) data,
    Size progressIndicatorSize = const Size(24, 24),
    double progressIndicatorStrokeWidth = 2,
  }) {
    return when(
      data: (d) => data(d),
      loading: () {
        return SizedBox(
          width: progressIndicatorSize.width,
          height: progressIndicatorSize.height,
          child: LoadingView(strokeWidth: progressIndicatorStrokeWidth),
        );
      },
      error: (e, s) {
        return const SizedBox.shrink();
      },
    );
  }
}
