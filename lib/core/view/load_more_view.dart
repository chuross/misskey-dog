import 'package:flutter/material.dart';

final class LoadMoreView extends StatelessWidget {
  final Widget child;
  final Function onNext;

  const LoadMoreView({
    super.key,
    required this.child,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollEndNotification>(
      onNotification: (notification) {
        if (notification.metrics.extentAfter == 0) onNext();
        return true;
      },
      child: child,
    );
  }
}
