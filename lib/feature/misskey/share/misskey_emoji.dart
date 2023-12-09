import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dog/core/extension/async_value.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/emoji/emoji_provider.dart';

final class MisskeyEmoji extends StatelessWidget {
  final Emoji emoji;
  final double height;

  const MisskeyEmoji({super.key, required this.emoji, required this.height});

  @override
  Widget build(BuildContext context) {
    return switch (emoji) {
      CustomEmoji() => (emoji as CustomEmoji).isLocal
          ? _LocalEmojiView(emoji: emoji as CustomEmoji, height: height)
          : _ExternalEmojiView(emoji: emoji as CustomEmoji, height: height),
      PlainEmoji() => Text((emoji as PlainEmoji).text, style: TextStyle(fontSize: height)),
    };
  }
}

final class _LocalEmojiView extends ConsumerWidget {
  final CustomEmoji emoji;
  final double height;

  const _LocalEmojiView({required this.emoji, required this.height});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localEmoji = ref.watch(localEmojiProvider(emojiName: emoji.name));
    return localEmoji.whenPartialLoading(
      data: (localEmoji) => CachedNetworkImage(
        imageUrl: localEmoji.url ?? '',
        height: height,
        fit: BoxFit.fitHeight,
        fadeInDuration: Duration.zero,
        fadeOutDuration: Duration.zero,
      ),
      progressIndicatorSize: Size.square(height),
    );
  }
}

final class _ExternalEmojiView extends StatelessWidget {
  final CustomEmoji emoji;
  final double height;

  const _ExternalEmojiView({required this.emoji, required this.height});

  @override
  Widget build(BuildContext context) {
    return Image.network(emoji.url ?? '', height: height, fit: BoxFit.fitHeight);
  }
}
