import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/bool.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/date_time.dart';
import 'package:misskey_dog/core/extension/object.dart';
import 'package:misskey_dog/core/extension/string.dart';

import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';
import 'package:misskey_dog/feature/emoji/share/emoji_view.dart';
import 'package:misskey_dog/feature/misskey/share/misskey_text.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/note/note_file.dart';
import 'package:misskey_dog/model/note/note_reaction.dart';

final class NoteItem extends StatelessWidget {
  final Note note;
  final Function(Emoji emoji) onReactionPressed;
  final Function() onReactionAddPressed;
  final Function(String) onHashtagPressed;
  final Function(String) onUrlPressed;

  Note get mainNote => note.renote ?? note;
  bool get maybeIndifferenceNote => mainNote.text?.contains('\$[') == true;

  const NoteItem({
    super.key,
    required this.note,
    required this.onReactionPressed,
    required this.onReactionAddPressed,
    required this.onHashtagPressed,
    required this.onUrlPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (maybeIndifferenceNote || note.renote?.myRawReactionEmoji != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _renotedInfo(),
          Container(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              '興味無いノートなので省略'.i18n,
              style: context.textTheme.bodyMedium,
            ).align(Alignment.center),
          )
        ],
      ).padding(const EdgeInsets.only(top: 16, bottom: 0, left: 16, right: 16));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _renotedInfo(),
        _mainContent(context),
        const SizedBox(height: 12),
        _reactions(onReactionPressed),
        _ActionButtons(onReactionAddPressed: onReactionAddPressed),
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
        SizedBox.square(
          dimension: 56,
          child: CircleAvatar(foregroundImage: CachedNetworkImageProvider(mainNote.user.avatarUrl ?? '')),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MisskeyText(
                  text: mainNote.user.displayName,
                  baseTextStyle: context.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
                  externalTextEmojiUrlMap: mainNote.user.externalEmojiUrlMap,
                ).flexible(),
                const SizedBox(width: 8),
                Text(
                  mainNote.createdAt.elapsedTimeLabel,
                  style: context.textTheme.labelSmall,
                ),
              ],
            ),
            mainNote.user.instance.mapOrElse((instance) {
              return Row(
                children: [
                  CachedNetworkImage(imageUrl: instance.iconUrl, fit: BoxFit.cover, width: 12, height: 12),
                  const SizedBox(width: 2),
                  Text(
                    instance.name ?? '',
                    style: context.textTheme.bodySmall?.copyWith(color: Colors.grey.shade700),
                    overflow: TextOverflow.ellipsis,
                  ).flexible(),
                ],
              );
            }, elseValue: const SizedBox.shrink()),
            const SizedBox(height: 4),
            mainNote.cw.mapOrElse(
              (cw) => Text(cw, style: context.textTheme.labelSmall?.copyWith(color: Colors.grey.shade500)),
              elseValue: const SizedBox.shrink(),
            ),
            MisskeyText(
              text: mainNote.text ?? '',
              baseTextStyle: context.textTheme.bodyMedium,
              externalTextEmojiUrlMap: note.externalTextEmojiUrlMap,
              onHashtagPressed: onHashtagPressed,
              onUrlPressed: onUrlPressed,
            ),
            const SizedBox(height: 8),
            _files(mainNote.files),
          ],
        ).expanded()
      ],
    );
  }

  Widget _reactions(Function(Emoji emoji) onReactionPressed) {
    return mainNote.reactions.isNotEmpty.mapOrElse(
      (_) => Row(
        children: [
          const SizedBox(width: 68),
          Wrap(
            spacing: 8,
            runSpacing: 4,
            children: mainNote.reactions.map((reaction) {
              return _Reaction(
                key: "${note.id}_${reaction.emoji.id}".toKey(),
                reaction: reaction,
                isReacted: reaction.emoji.id == mainNote.myReactionEmoji?.id,
                onReactionPressed: onReactionPressed,
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
          child: CircleAvatar(foregroundImage: CachedNetworkImageProvider(note.user.avatarUrl ?? '')),
        ),
        MisskeyText(
          text: "%sがリノート".i18n.fill([note.user.displayName]),
          baseTextStyle: context.textTheme.bodySmall,
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          externalTextEmojiUrlMap: note.user.externalEmojiUrlMap,
        ).flexible(),
      ],
    );
  }
}

Widget _files(List<NoteFile> files) {
  if (files.isEmpty) {
    return const SizedBox.shrink();
  }

  final imageFiles = files.where((e) => e.isImage).toList();

  if (imageFiles.length == 1) {
    return _Image(file: files.first, height: 300);
  }

  return GridView.count(
    crossAxisCount: 2,
    shrinkWrap: true,
    primary: false,
    mainAxisSpacing: 8,
    crossAxisSpacing: 8,
    children: imageFiles.map((e) => _Image(file: e, height: 300)).toList(),
  );
}

final class _Image extends HookWidget {
  final NoteFile file;
  final double? height;

  const _Image({required this.file, required this.height});

  @override
  Widget build(BuildContext context) {
    final isSensitiveRemoved = useState(!file.isSensitive);

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: GestureDetector(
        onTap: () => isSensitiveRemoved.value ? context.pushRoute(ImageDetailRoute(imageUrl: file.url)) : isSensitiveRemoved.value = true,
        child: isSensitiveRemoved.value.takeIfTrue().mapOrElse(
            (_) => Hero(
                  tag: file.url,
                  child: CachedNetworkImage(
                    imageUrl: file.url,
                    width: double.infinity,
                    height: height,
                    fit: BoxFit.cover,
                    fadeInDuration: const Duration(milliseconds: 200),
                  ),
                ),
            elseValue: Container(
              alignment: Alignment.center,
              color: Colors.blueGrey.shade100,
              height: height,
              child: Text('センシティブ'.i18n, style: context.textTheme.bodySmall?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
            )),
      ),
    );
  }
}

final class _Reaction extends StatelessWidget {
  final NoteReaction reaction;
  final bool isReacted;
  final void Function(Emoji emoji) onReactionPressed;

  const _Reaction({
    super.key,
    required this.reaction,
    required this.isReacted,
    required this.onReactionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => !isReacted && reaction.isReactionable ? onReactionPressed(reaction.emoji) : null,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
        decoration: BoxDecoration(
          color: isReacted ? context.theme.primaryColor.withOpacity(0.15) : null,
          border: reaction.isReactionable
              ? Border.all(
                  color: isReacted ? context.theme.primaryColor.withOpacity(0.3) : context.dividerColorWithOpacity20,
                )
              : null,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            EmojiView(emoji: reaction.emoji, height: 18),
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
  final void Function() onReactionAddPressed;

  const _ActionButtons({required this.onReactionAddPressed});

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
          onPressed: onReactionAddPressed,
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
