import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18n_extension/default.i18n.dart';

final class EmojiReactionCreationModal extends HookWidget {
  const EmojiReactionCreationModal({super.key});

  @override
  Widget build(BuildContext context) {
    final query = useState('');

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'キーワード'.i18n,
          ),
          onChanged: (text) => query.value = text,
        ),
      ],
    );
  }
}
