import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:misskey_dog/feature/note/share/note_item.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/note/note_provider.dart';

final class CachedNoteItem extends HookConsumerWidget {
  final String noteId;
  final void Function(Emoji) onReactionPressed;
  final void Function() onReactionAddPressed;
  final void Function(String) onHashtagPressed;
  final void Function(String) onUrlPressed;

  const CachedNoteItem({
    super.key,
    required this.noteId,
    required this.onReactionPressed,
    required this.onReactionAddPressed,
    required this.onHashtagPressed,
    required this.onUrlPressed,
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
      onReactionPressed: onReactionPressed,
      onReactionAddPressed: onReactionAddPressed,
      onHashtagPressed: onHashtagPressed,
      onUrlPressed: onUrlPressed,
    );
  }
}
