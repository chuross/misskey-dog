import 'package:flutter/material.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/dynamic.dart';
import 'package:misskey_dog/core/extension/string.dart';

import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/feature/emoji/share/misskey_emoji.dart';
import 'package:misskey_dog/feature/misskey/share/misskey_text.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/note/note_reaction.dart';

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
        _renotedInfo(),
        _mainContent(context),
        const SizedBox(height: 12),
        _reactions(),
        _ActionButtons(),
      ],
    ).padding(const EdgeInsets.only(top: 16, bottom: 0, left: 16, right: 16));
  }

  Widget _renotedInfo() {
    return note.renote.mapOrElse(
      func: (_) => Column(
        children: [
          _RenotedInfo(note: note),
          const SizedBox(height: 12),
        ],
      ),
      elseValue: const SizedBox.shrink(),
    );
  }

  Widget _mainContent(BuildContext context) {
    return Row(
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
            MisskeyText(
              key: "${note.id}_${note.renote?.text ?? note.text ?? ''}".toKey(),
              text: note.renote?.text ?? note.text ?? '',
              baseTextStyle: context.textTheme.bodyLarge!,
            ),
            const SizedBox(height: 16),
            note.files.where((element) => element.isImage).firstOrNull.mapOrElse(
                  func: (file) => Image.network(file.url, width: double.infinity, height: 250, fit: BoxFit.cover),
                  elseValue: const SizedBox.shrink(),
                ),
          ],
        ).expanded()
      ],
    );
  }

  Widget _reactions() {
    return note.reactions.isNotEmpty.mapOrElse(
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
            ).expanded(),
          ],
        );
      },
      elseValue: const SizedBox.shrink(),
    );
  }
}

final class _RenotedInfo extends StatelessWidget {
  final Note note;

  const _RenotedInfo({required this.note});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 12),
        const Icon(Icons.repeat_rounded, size: 16),
        SizedBox(
          height: 24,
          child: CircleAvatar(foregroundImage: NetworkImage(note.user.avatarUrl ?? '')),
        ),
        Text(
          "%sがリノート".i18n.fill([note.user.username]),
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
        mainAxisSize: MainAxisSize.min,
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
      mainAxisSize: MainAxisSize.min,
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
