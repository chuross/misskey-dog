import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dog/core/extension/async_value.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/emoji/emoji_provider.dart';

final class EmojiView extends StatelessWidget {
  final Emoji emoji;
  final Size size;

  const EmojiView({super.key, required this.emoji, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: size,
      child: switch (emoji) {
        LocalEmoji() => _LocalEmojiView(
            emoji: emoji as LocalEmoji,
            size: size,
          ),
        PlainEmoji() => Text((emoji as PlainEmoji).text, style: TextStyle(fontSize: size.height)),
      },
    );
  }
}

final class _LocalEmojiView extends ConsumerWidget {
  final LocalEmoji emoji;
  final Size size;

  const _LocalEmojiView({required this.emoji, required this.size});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localEmoji = ref.watch(localEmojiProvider(emojiName: emoji.name));
    return localEmoji.whenPartialLoading(
      data: (localEmoji) => Image.network(localEmoji.url ?? '', height: size.height, fit: BoxFit.fitHeight),
    );
  }
}
