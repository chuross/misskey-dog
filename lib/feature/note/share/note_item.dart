import 'package:flutter/material.dart';
import 'package:misskey_dog/core/extension/build_context.dart';

import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/model/note/note.dart';

final class NoteItem extends StatelessWidget {
  final Note note;

  const NoteItem({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 56,
          height: 56,
          child: CircleAvatar(foregroundImage: NetworkImage(note.user.avatarUrl ?? '')),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(note.user.username, style: context.textTheme.bodySmall),
            Text(note.text ?? '', softWrap: true),
          ],
        ).expanded()
      ],
    ).padding(const EdgeInsets.all(16));
  }
}
