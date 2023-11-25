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
    return Column(
      children: [
        Row(
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
        ),
        Row(
          children: [
            const SizedBox(width: 56),
            IconButton(
              onPressed: () {},
              iconSize: 20,
              icon: const Icon(Icons.reply_rounded),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 20,
              icon: const Icon(Icons.repeat_rounded),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 20,
              icon: const Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 20,
              icon: const Icon(Icons.more_horiz_rounded),
            ),
          ],
        ),
      ],
    ).padding(const EdgeInsets.only(top: 16, bottom: 0, left: 16, right: 16));
  }
}
