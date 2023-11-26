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
      LocalEmoji() => _LocalEmojiView(
          emoji: emoji as LocalEmoji,
          height: height,
        ),
      PlainEmoji() => Text((emoji as PlainEmoji).text, style: TextStyle(fontSize: height)),
    };
  }
}

final class _LocalEmojiView extends ConsumerWidget {
  final LocalEmoji emoji;
  final double height;

  const _LocalEmojiView({required this.emoji, required this.height});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localEmoji = ref.watch(localEmojiProvider(emojiName: emoji.name));
    return localEmoji.whenPartialLoading(
      data: (localEmoji) => Image.network(localEmoji.url ?? '', height: height, fit: BoxFit.fitHeight),
      progressIndicatorSize: Size.square(height),
    );
  }
}
