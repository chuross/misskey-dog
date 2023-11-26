import 'package:flutter/material.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/widget.dart';

final class HomeNoteCreationModalScreen extends StatelessWidget {
  const HomeNoteCreationModalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 28),
        TextField(
          style: context.textTheme.bodyMedium,
          decoration: InputDecoration(
            hintText: 'いまどうしてる?'.i18n,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
          ),
          maxLines: null,
        )
      ],
    ).padding(const EdgeInsets.all(16));
  }
}
