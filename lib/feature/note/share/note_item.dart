import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/date_time.dart';
import 'package:misskey_dog/core/extension/string.dart';

import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/hook/use_video_player_controller.dart';
import 'package:misskey_dog/core/view/core_image.dart';

import 'package:misskey_dog/feature/emoji/share/emoji_view.dart';
import 'package:misskey_dog/feature/home/home_screen.dart';
import 'package:misskey_dog/feature/misskey/share/misskey_text.dart';
import 'package:misskey_dog/feature/note/note_file_detail_screen.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/note/note_file.dart';
import 'package:misskey_dog/model/note/note_reaction.dart';
import 'package:video_player/video_player.dart';

final class NoteItem extends StatelessWidget {
  final Note note;
  final Function() onUserIconPressed;
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
    required this.onUserIconPressed,
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
          onUserIconPressed: onUserIconPressed,
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
  final Function() onUserIconPressed;
  final Function(String) onHashtagPressed;
  final Function(String) onUrlPressed;

  Note get _mainNote => note.renote ?? note;

  const _MainContent({
    required this.note,
    required this.onUserIconPressed,
    required this.onHashtagPressed,
    required this.onUrlPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: onUserIconPressed,
          icon: SizedBox.square(
            dimension: 48,
            child: CircleAvatar(foregroundImage: CachedNetworkImageProvider(_mainNote.user.avatarUrl ?? '')),
          ),
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
            _NoteFiles(files: _mainNote.files, isLocal: _mainNote.isLocal),
          ],
        ).expanded()
      ],
    );
  }
}

final class _NoteFiles extends HookWidget {
  final List<NoteFile> files;
  final bool isLocal;

  const _NoteFiles({required this.files, required this.isLocal});

  @override
  Widget build(BuildContext context) {
    if (files.isEmpty) {
      return const SizedBox.shrink();
    }

    final imageFiles = files.where((e) => e.isImage).toList();
    final videoFiles = files.where((e) => e.isVideo).toList();
    final supportedFiles = [...imageFiles, ...videoFiles];
    final isSensitiveRemoved = useState(supportedFiles.every((e) => !e.isSensitive));

    if (supportedFiles.length == 1) {
      return _FileView(
        file: supportedFiles.first,
        isLocal: isLocal,
        isSensitiveRemoved: isSensitiveRemoved.value,
        onSensitiveRemove: () => isSensitiveRemoved.value = true,
        onTapped: (file) => NoteFileDetailRoute($extra: (files: files, initialFile: file)).push(context),
      );
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
          _FileView(
            file: file,
            isLocal: isLocal,
            withPlayingVideo: false,
            isPlayableVideo: false,
            videoAspectRatio: 1,
            isSensitiveRemoved: isSensitiveRemoved.value,
            onSensitiveRemove: () => isSensitiveRemoved.value = true,
            onTapped: (file) => NoteFileDetailRoute($extra: (files: files, initialFile: file)).push(context),
          )
      ],
    );
  }
}

final class _FileView extends StatelessWidget {
  final NoteFile file;
  final bool isLocal;
  final bool withPlayingVideo;
  final bool isPlayableVideo;
  final double? videoAspectRatio;
  final bool isSensitiveRemoved;
  final void Function() onSensitiveRemove;
  final void Function(NoteFile) onTapped;

  const _FileView({
    required this.file,
    required this.isLocal,
    this.withPlayingVideo = true,
    this.isPlayableVideo = true,
    this.videoAspectRatio,
    required this.isSensitiveRemoved,
    required this.onSensitiveRemove,
    required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return switch (file) {
      final file when file.isImage => _ImageView(
          file: file,
          isSensitiveRemoved: isSensitiveRemoved,
          onSensitiveRemove: onSensitiveRemove,
          onTapped: onTapped,
        ),
      final file when file.isVideo => _VideoView(
          file: file,
          isLocal: isLocal,
          withPlaying: withPlayingVideo,
          isPlayable: isPlayableVideo,
          aspectRatio: videoAspectRatio,
          isSensitiveRemoved: isSensitiveRemoved,
          onSensitiveRemove: onSensitiveRemove,
        ),
      _ => const SizedBox.shrink(),
    };
  }
}

final class _ImageView extends StatelessWidget {
  final NoteFile file;
  final bool isSensitiveRemoved;
  final void Function() onSensitiveRemove;
  final void Function(NoteFile) onTapped;

  const _ImageView({
    required this.file,
    required this.isSensitiveRemoved,
    required this.onSensitiveRemove,
    required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: GestureDetector(
        onTap: () => isSensitiveRemoved ? onTapped(file) : onSensitiveRemove(),
        child: AspectRatio(
          aspectRatio: switch (file.properties) {
            final properties? => (properties.width ?? 1) / (properties.height ?? 1),
            _ => 1 / 1,
          },
          child: Stack(
            children: [
              Hero(
                tag: file.url,
                child: CoreImage(
                  imageUrl: file.thumbnailUrl ?? file.url,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              if (!isSensitiveRemoved)
                Positioned.fill(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.blueGrey.shade100,
                    child: Text(
                      'センシティブ'.i18n,
                      style: context.textTheme.bodySmall?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

final class _VideoView extends HookWidget {
  final NoteFile file;
  final bool isLocal;
  final bool withPlaying;
  final bool isPlayable;
  final bool isSensitiveRemoved;
  final double? aspectRatio;
  final void Function() onSensitiveRemove;

  const _VideoView({
    required this.file,
    required this.isLocal,
    required this.withPlaying,
    required this.isPlayable,
    required this.isSensitiveRemoved,
    required this.aspectRatio,
    required this.onSensitiveRemove,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedUrl = useMemoized(
      () => switch (file) {
        final file when !isLocal && file.url.contains('image.webp') => Uri.parse(file.url).queryParameters['url'] ?? file.url,
        _ => file.url,
      },
      [file.url],
    );
    final (controller, isReady) = useVideoPlayerController(resolvedUrl);
    final isMute = useState(true);

    useEffect(() {
      if (isReady && withPlaying && isSensitiveRemoved) controller.play();

      return null;
    }, [isReady]);

    useEffect(() {
      controller.setVolume(isMute.value ? 0 : 1);
      return null;
    }, [isMute.value]);

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: GestureDetector(
        onTap: () => isSensitiveRemoved ? null : onSensitiveRemove(),
        child: AspectRatio(
          aspectRatio: aspectRatio ?? (isReady ? controller.value.aspectRatio : 16 / 9),
          child: isReady
              ? Hero(
                  tag: file.url,
                  child: Stack(
                    children: [
                      VideoPlayer(controller),
                      IconButton(
                        onPressed: () => isMute.value = !isMute.value,
                        icon: Icon(isMute.value ? Icons.volume_off : Icons.volume_up),
                        iconSize: 20,
                      ),
                      if (!controller.value.isPlaying)
                        IconButton(
                          onPressed: () => isPlayable ? controller.play() : null,
                          iconSize: 56,
                          color: context.theme.primaryColor,
                          icon: const Icon(Icons.play_circle_outline),
                        ).align(Alignment.center),
                      if (!isSensitiveRemoved)
                        Positioned.fill(
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.blueGrey.shade100,
                            child: Text(
                              'センシティブ'.i18n,
                              style: context.textTheme.bodySmall?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                    ],
                  ),
                )
              : const SizedBox.square(dimension: 24, child: CircularProgressIndicator(strokeWidth: 2)),
        ),
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
              ? Border.all(color: isReacted ? context.theme.primaryColor.withOpacity(0.3) : context.dividerColorWithOpacity20)
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
          icon: const Icon(Icons.emoji_emotions_outlined),
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
