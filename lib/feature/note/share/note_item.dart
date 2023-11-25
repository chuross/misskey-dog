import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/async_value.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/dynamic.dart';
import 'package:misskey_dog/core/extension/string.dart';

import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/model/emoji/emoji_provider.dart';
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
        note.reactions.isNotEmpty.mapOrElse(
          func: (_) {
            return Wrap(
              children: note.reactions.map((reaction) {
                return _Reaction(key: reaction.name.toKey(), reaction: reaction);
              }).toList(),
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
        ),
      ],
    );
  }
}

final class _Reaction extends ConsumerWidget {
  final NoteReaction reaction;

  const _Reaction({super.key, required this.reaction});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emoji = ref.watch(emojiProvider(emojiName: reaction.name));

    return emoji.whenPartialLoading(
      data: (emoji) => SizedBox(
        width: 16,
        height: 16,
        child: Image.network(emoji.url, fit: BoxFit.fitHeight),
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
