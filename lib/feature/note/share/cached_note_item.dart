import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/feature/note/share/note_item.dart';
import 'package:misskey_dog/model/note/note_provider.dart';

final class CachedNoteItem extends ConsumerWidget {
  final String noteId;

  const CachedNoteItem({super.key, required this.noteId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = cachedNoteProvider(id: noteId);

    final note = ref.watch(provider);
    if (note == null) {
      return const SizedBox.shrink();
    }

    ref.watch(noteUpdateStreamingProvider(noteId: noteId)).maybeWhen(
          data: (data) => print('@@@@$data'),
          orElse: () {},
        );

    return NoteItem(
      note: note,
      onReactionTap: (emoji) => ref.read(provider.notifier).reaction(emoji),
    );
  }
}
