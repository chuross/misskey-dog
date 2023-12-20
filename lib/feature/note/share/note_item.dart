import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/date_time.dart';
import 'package:misskey_dog/core/extension/string.dart';

import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/hook/use_video_player_controller.dart';

import 'package:misskey_dog/feature/emoji/share/emoji_view.dart';
import 'package:misskey_dog/feature/home/home_screen.dart';
import 'package:misskey_dog/feature/image/image_detail_screen.dart';
import 'package:misskey_dog/feature/misskey/share/misskey_text.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/note/note_file.dart';
import 'package:misskey_dog/model/note/note_reaction.dart';
import 'package:video_player/video_player.dart';

final class NoteItem extends StatelessWidget {
  final Note note;
  final Function(String) onHashtagPressed;
  final Function(String) onUrlPressed;
  final Function(Emoji emoji) onReactionPressed;
  final Function() onReplyPressed;
  final Function() onRenotePressed;
  final Function() onReactionAddPressed;
  final Function() onMoreActionPressed;

  Note get mainNote => note.renote ?? note;
  bool get maybeIndifferenceNote => mainNote.text?.contains('\$[') == true;

  const NoteItem({
    super.key,
    required this.note,
    required this.onHashtagPressed,
    required this.onUrlPressed,
    required this.onReactionPressed,
    required this.onReplyPressed,
    required this.onRenotePressed,
    required this.onReactionAddPressed,
    required this.onMoreActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (maybeIndifferenceNote || note.renote?.myRawReactionEmoji != null) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Text(
          '省略'.i18n,
          style: context.textTheme.bodyMedium,
        ).align(Alignment.center),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _RenotedInfo(note: note),
        _MainContent(
          note: note,
          onHashtagPressed: onHashtagPressed,
          onUrlPressed: onUrlPressed,
        ),
        const SizedBox(height: 12),
        _Reactions(note: note, onReactionPressed: onReactionPressed),
        _ActionButtons(
          onReplyPressed: onReplyPressed,
          onRenotePressed: onRenotePressed,
          onReactionAddPressed: onReactionAddPressed,
          onMoreActionPressed: onMoreActionPressed,
        ),
      ],
    ).padding(const EdgeInsets.only(top: 16, bottom: 0, left: 16, right: 16));
  }
}

final class _RenotedInfo extends StatelessWidget {
  final Note note;

  const _RenotedInfo({required this.note});

  @override
  Widget build(BuildContext context) {
    if (note.renote == null) {
      return const SizedBox.shrink();
    }

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

final class _MainContent extends StatelessWidget {
  final Note note;
  final Function(String) onHashtagPressed;
  final Function(String) onUrlPressed;

  Note get _mainNote => note.renote ?? note;

  const _MainContent({
    required this.note,
    required this.onHashtagPressed,
    required this.onUrlPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox.square(
          dimension: 48,
          child: CircleAvatar(foregroundImage: CachedNetworkImageProvider(_mainNote.user.avatarUrl ?? '')),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MisskeyText(
                  text: _mainNote.user.displayName,
                  baseTextStyle: context.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
                  externalTextEmojiUrlMap: _mainNote.user.externalEmojiUrlMap,
                ).flexible(),
                const SizedBox(width: 8),
                Text(
                  _mainNote.createdAt.elapsedTimeLabel,
                  style: context.textTheme.labelSmall,
                ),
              ],
            ),
            if (_mainNote.user.instance case final instance?)
              Row(
                children: [
                  CachedNetworkImage(imageUrl: instance.iconUrl ?? '', fit: BoxFit.cover, width: 12, height: 12),
                  const SizedBox(width: 2),
                  Text(
                    _mainNote.user.instance?.name ?? '',
                    style: context.textTheme.bodySmall?.copyWith(color: Colors.grey.shade700),
                    overflow: TextOverflow.ellipsis,
                  ).flexible(),
                ],
              ),
            const SizedBox(height: 4),
            if (_mainNote.cw case final cw?)
              Text(cw, style: context.textTheme.labelSmall?.copyWith(color: context.theme.colorScheme.secondary)),
            MisskeyText(
              text: _mainNote.text ?? '',
              baseTextStyle: context.textTheme.bodyMedium,
              externalTextEmojiUrlMap: note.externalTextEmojiUrlMap,
              onHashtagPressed: onHashtagPressed,
              onUrlPressed: onUrlPressed,
            ),
            SizedBox(height: _mainNote.text?.isNotEmpty == true ? 8 : 0),
            _NoteFiles(files: _mainNote.files),
          ],
        ).expanded()
      ],
    );
  }
}

final class _NoteFiles extends HookWidget {
  final List<NoteFile> files;

  const _NoteFiles({required this.files});

  @override
  Widget build(BuildContext context) {
    if (files.isEmpty) {
      return const SizedBox.shrink();
    }

    final imageFiles = files.where((e) => e.isImage).toList();
    final videoFiles = files.where((e) => e.isVideo).toList();
    final isSensitiveRemoved = useState(imageFiles.every((e) => !e.isSensitive));

    if (imageFiles.length == 1) {
      return _Image(
        file: files.first,
        height: 300,
        isSensitiveRemoved: isSensitiveRemoved.value,
        onSensitiveRemove: () => isSensitiveRemoved.value = true,
      );
    }

    if (videoFiles.length == 1) {
      return _Video(file: files.first, withPlaying: true);
    }

    return GridView.count(
      padding: EdgeInsets.zero,
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: [
        for (final file in imageFiles)
          _Image(
            file: file,
            height: 300,
            isSensitiveRemoved: isSensitiveRemoved.value,
            onSensitiveRemove: () => isSensitiveRemoved.value = true,
          )
      ],
    );
  }
}

final class _Image extends StatelessWidget {
  final NoteFile file;
  final double? height;
  final bool isSensitiveRemoved;
  final void Function() onSensitiveRemove;

  const _Image({
    required this.file,
    required this.height,
    required this.isSensitiveRemoved,
    required this.onSensitiveRemove,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: GestureDetector(
        onTap: () =>
            isSensitiveRemoved ? ImageDetailRoute(imageUrl: file.url, thumbnailUrl: file.thumbnailUrl).push(context) : onSensitiveRemove(),
        child: isSensitiveRemoved
            ? Hero(
                tag: file.thumbnailUrl ?? file.url,
                child: CachedNetworkImage(
                  imageUrl: file.thumbnailUrl ?? file.url,
                  width: double.infinity,
                  height: height,
                  fit: BoxFit.cover,
                  fadeInDuration: const Duration(milliseconds: 200),
                ),
              )
            : Container(
                alignment: Alignment.center,
                color: Colors.blueGrey.shade100,
                height: height,
                child: Text('センシティブ'.i18n, style: context.textTheme.bodySmall?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
      ),
    );
  }
}

final class _Video extends HookWidget {
  final NoteFile file;
  final bool withPlaying;

  const _Video({required this.file, required this.withPlaying});

  @override
  Widget build(BuildContext context) {
    final (controller, isReady) = useVideoPlayerController(file.url);
    final isMute = useState(true);

    useEffect(() {
      if (isReady && withPlaying) controller.play();

      return null;
    }, [isReady]);

    useEffect(() {
      controller.setVolume(isMute.value ? 0 : 1);
      return null;
    }, [isMute.value]);

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: isReady ? controller.value.aspectRatio : 16 / 9,
        child: isReady
            ? Stack(
                children: [
                  VideoPlayer(controller),
                  IconButton(
                    onPressed: () => isMute.value = !isMute.value,
                    icon: Icon(isMute.value ? Icons.volume_off : Icons.volume_up),
                    iconSize: 20,
                  ),
                ],
              )
            : const CircularProgressIndicator(strokeWidth: 2),
      ),
    );
  }
}

final class _Reactions extends StatelessWidget {
  final Note note;
  final Function(Emoji emoji) onReactionPressed;

  Note get _mainNote => note.renote ?? note;

  const _Reactions({required this.note, required this.onReactionPressed});

  @override
  Widget build(Object context) {
    if (_mainNote.reactions.isEmpty) {
      return const SizedBox.shrink();
    }

    return Row(
      children: [
        const SizedBox(width: 68),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: [
            for (final reaction in _mainNote.reactions)
              _Reaction(
                key: "${note.id}_${reaction.emoji.id}".toKey(),
                reaction: reaction,
                isReacted: reaction.emoji.id == _mainNote.myReactionEmoji?.id,
                onReactionPressed: onReactionPressed,
              ),
          ],
        ).expanded(),
      ],
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
  final Function() onReplyPressed;
  final Function() onRenotePressed;
  final Function() onReactionAddPressed;
  final Function() onMoreActionPressed;

  const _ActionButtons({
    required this.onReplyPressed,
    required this.onRenotePressed,
    required this.onReactionAddPressed,
    required this.onMoreActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(width: 56),
        IconButton(
          onPressed: onReplyPressed,
          iconSize: 20,
          icon: const Icon(Icons.reply_rounded),
        ),
        IconButton(
          onPressed: onRenotePressed,
          iconSize: 20,
          icon: const Icon(Icons.repeat_rounded),
        ),
        IconButton(
          onPressed: onReactionAddPressed,
          iconSize: 20,
          icon: const Icon(Icons.add),
        ),
        IconButton(
          onPressed: onMoreActionPressed,
          iconSize: 20,
          icon: const Icon(Icons.more_horiz_rounded),
        ),
      ],
    );
  }
}
