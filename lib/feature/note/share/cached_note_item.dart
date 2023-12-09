import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/core/logger/logger_provider.dart';
import 'package:misskey_dog/feature/note/share/note_item.dart';
import 'package:misskey_dog/model/note/note_provider.dart';

final class CachedNoteItem extends HookConsumerWidget {
  final String noteId;

  const CachedNoteItem({super.key, required this.noteId});

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
      onReactionTap: (emoji) => ref.read(provider.notifier).reaction(emoji),
    );
  }
}
