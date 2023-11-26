import 'package:flutter/material.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/dynamic.dart';
import 'package:misskey_dog/core/extension/string.dart';

import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/feature/emoji/share/misskey_emoji.dart';
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        note.renote.mapOrElse(
          func: (_) => Column(
            children: [
              _RenotedInfo(note: note),
              const SizedBox(height: 12),
            ],
          ),
          elseValue: const SizedBox.shrink(),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 56,
              height: 56,
              child: CircleAvatar(foregroundImage: NetworkImage(note.renote?.user.avatarUrl ?? note.user.avatarUrl ?? '')),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  note.renote?.user.username ?? note.user.username,
                  style: context.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  note.renote?.text ?? note.text ?? '',
                  softWrap: true,
                  style: context.textTheme.bodyMedium,
                ),
              ],
            ).expanded()
          ],
        ),
        const SizedBox(height: 12),
        note.reactions.isNotEmpty.mapOrElse(
          func: (_) {
            return Row(
              children: [
                const SizedBox(width: 68),
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: note.reactions.map((reaction) {
                    return _Reaction(
                      key: "${note.id}_${reaction.emoji.id}".toKey(),
                      reaction: reaction,
                    );
                  }).toList(),
                ),
              ],
            );
          },
          elseValue: const SizedBox.shrink(),
        ),
        _ActionButtons(),
      ],
    ).padding(const EdgeInsets.only(top: 16, bottom: 0, left: 16, right: 16));
  }
}

final class _RenotedInfo extends StatelessWidget {
  final Note note;

  const _RenotedInfo({required this.note});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.repeat_rounded, size: 16),
        const SizedBox(width: 4),
        SizedBox(
          height: 24,
          child: CircleAvatar(foregroundImage: NetworkImage(note.user.avatarUrl ?? '')),
        ),
        const SizedBox(width: 8),
        Text(
          "%sさんがリノートしました".i18n.fill([note.user.username]),
          style: context.textTheme.bodySmall,
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
        ).flexible(),
      ],
    );
  }
}

final class _Reaction extends StatelessWidget {
  final NoteReaction reaction;

  const _Reaction({super.key, required this.reaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
      decoration: BoxDecoration(
        border: Border.all(color: context.dividerColorWithOpacity20),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          MisskeyEmoji(emoji: reaction.emoji, height: 20),
          const SizedBox(width: 4),
          Text(
            reaction.reactionCount.toString(),
            style: context.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

final class _ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
