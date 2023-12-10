import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/feature/emoji/emoji_reaction_creation_modal.dart';
import 'package:misskey_dog/feature/note/share/note_item.dart';
import 'package:misskey_dog/model/note/note_provider.dart';
import 'package:url_launcher/url_launcher.dart';

final class CachedNoteItem extends HookConsumerWidget {
  final String noteId;

  const CachedNoteItem({
    super.key,
    required this.noteId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = cachedNoteProvider(id: noteId);

    final note = ref.watch(provider);
    if (note == null) {
      return const SizedBox.shrink();
    }

    ref.listen(noteUpdateStreamingProvider(noteId: noteId), (_, __) {
      ref.read(provider.notifier).sync();
    });

    return NoteItem(
      note: note,
      onReactionPressed: (emoji) => ref.read(provider.notifier).reaction(emoji),
      onReactionAddPressed: () => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        showDragHandle: true,
        builder: (_) => EmojiReactionCreationModal(onEmojiSelected: (emoji) {
          ref.read(provider.notifier).reaction(emoji);
        }),
      ),
      onUrlPressed: (url) => launchUrl(Uri.parse(url)),
    );
  }
}
