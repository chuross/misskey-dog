import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:i18n_extension/default.i18n.dart';

void showComfirmationDialog({
  required BuildContext context,
  required String message,
  required String positiveText,
  required void Function() onPositivePressed,
}) {
  showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: Text('キャンセル'.i18n),
            ),
            TextButton(
              onPressed: () {
                onPositivePressed();
                context.pop();
              },
              child: Text(positiveText),
            ),
          ],
        );
      });
}
