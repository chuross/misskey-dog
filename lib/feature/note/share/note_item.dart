import 'package:flutter/material.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/dynamic.dart';
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
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: CircleAvatar(foregroundImage: NetworkImage(note.user.avatarUrl ?? '')),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(note.user.username, style: context.textTheme.bodySmall),
            note.text.mapOrElse(
              func: (text) => Text(text, overflow: TextOverflow.clip),
              elseFunc: () => const Text(''),
            ),
          ],
        )
      ],
    ).padding(const EdgeInsets.all(16));
  }
}
