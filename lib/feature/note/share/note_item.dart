import 'package:flutter/material.dart';
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
      ],
    );
  }
}
