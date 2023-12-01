import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/date_time.dart';
import 'package:misskey_dog/core/extension/object.dart';
import 'package:misskey_dog/core/extension/string.dart';

import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';
import 'package:misskey_dog/feature/emoji/share/misskey_emoji.dart';
import 'package:misskey_dog/feature/misskey/share/misskey_text.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/note/note_reaction.dart';

final class NoteItem extends StatelessWidget {
  final Note note;
  final Function(Emoji emoji) onReactionTap;

  const NoteItem({
    super.key,
    required this.note,
    required this.onReactionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _renotedInfo(),
        _mainContent(context),
        const SizedBox(height: 12),
        _reactions(note.myReactionEmoji, onReactionTap),
        _ActionButtons(),
      ],
    ).padding(const EdgeInsets.only(top: 16, bottom: 0, left: 16, right: 16));
  }

  Widget _renotedInfo() {
    return note.renote.mapOrElse(
      (_) => Column(
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
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  note.renote?.user.username ?? note.user.username,
                  style: context.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
                ).flexible(),
                const SizedBox(width: 8),
                Text(
                  note.renote?.createdAt.elapsedTimeLabel ?? note.createdAt.elapsedTimeLabel,
                  style: context.textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(height: 4),
            MisskeyText(
              key: "${note.id}_text".toKey(),
              text: note.renote?.text ?? note.text ?? '',
              baseTextStyle: context.textTheme.bodyMedium!,
            ),
            const SizedBox(height: 16),
            note.files.where((element) => element.isImage).firstOrNull.mapOrElse(
                  (file) => ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: InkWell(
                      onTap: () => context.pushRoute(ImageDetailRoute(imageUrl: file.url)),
                      child: Hero(
                        tag: file.url,
                        child: Image.network(file.url, width: double.infinity, height: 250, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  elseValue: const SizedBox.shrink(),
                ),
          ],
        ).expanded()
      ],
    );
  }

  Widget _reactions(Emoji? myReactionEmoji, Function(Emoji emoji) onReactionTap) {
    return note.reactions.isNotEmpty.mapOrElse(
      (_) => Row(
        children: [
          const SizedBox(width: 68),
          Wrap(
            spacing: 8,
            runSpacing: 4,
            children: note.reactions.map((reaction) {
              return _Reaction(
                key: "${note.id}_${reaction.emoji.id}".toKey(),
                reaction: reaction,
                isReacted: reaction.emoji.id == myReactionEmoji?.id,
                onReactionTap: onReactionTap,
              );
            }).toList(),
          ).expanded(),
        ],
      ),
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
  final bool isReacted;
  final Function(Emoji emoji) onReactionTap;

  const _Reaction({
    super.key,
    required this.reaction,
    required this.isReacted,
    required this.onReactionTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => !isReacted ? onReactionTap(reaction.emoji) : null,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
        decoration: BoxDecoration(
          color: isReacted ? context.theme.primaryColor.withOpacity(0.15) : null,
          border: Border.all(color: isReacted ? context.theme.primaryColor.withOpacity(0.3) : context.dividerColorWithOpacity20),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MisskeyEmoji(emoji: reaction.emoji, height: 18),
            const SizedBox(width: 4),
            Text(
              reaction.reactionCount.toString(),
              style: context.textTheme.bodyMedium,
            ),
          ],
        ),
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
