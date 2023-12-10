import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/emoji/emoji_provider.dart';

final class EmojiReactionCreationModal extends HookConsumerWidget {
  final Function(Emoji emoji) onEmojiSelected;

  const EmojiReactionCreationModal({super.key, required this.onEmojiSelected});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emojis = ref.watch(localEmojisProvider);
    final query = useState('');

    final filterdEmoji = useMemoized(() {
      return emojis.value?.where((element) => element.name.contains(query.value)).toList() ?? emojis;
    }, [query.value]);

    switch (emojis) {
      case AsyncData():
        return DraggableScrollableSheet(
          initialChildSize: 0.5,
          maxChildSize: 0.9,
          minChildSize: 0.49,
          expand: false,
          snap: true,
          builder: (_, controller) {
            return CustomScrollView(
              controller: controller,
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.url,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          hintText: 'キーワード'.i18n,
                        ),
                        onChanged: (text) => query.value = text,
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
                SliverGrid.builder(
                  itemCount: filterdEmoji.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 8,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemBuilder: (_, index) {
                    final emoji = filterdEmoji[index];
                    return InkWell(
                      onTap: () {
                        onEmojiSelected(emoji);
                        context.popRoute();
                      },
                      child: CachedNetworkImage(imageUrl: emoji.url ?? '', fit: BoxFit.contain),
                    );
                  },
                )
              ],
            )
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .padding(EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom));
          },
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
