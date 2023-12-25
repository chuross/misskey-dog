import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:misskey_dog/feature/note/share/note_item.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/note/provider/note_force_sensitive_provider.dart';
import 'package:misskey_dog/model/note/provider/note_provider.dart';

final class CachedNoteItem extends HookConsumerWidget {
  final String noteId;
  final bool isOmitEnabled;
  final Function(String userId) onUserIconPressed;
  final Function(Emoji) onReactionPressed;
  final Function(String) onHashtagPressed;
  final Function(String) onUrlPressed;
  final Function(String noteId) onReplyPressed;
  final Function(String noteId) onRenotePressed;
  final Function() onReactionAddPressed;
  final Function() onMoreActionPressed;

  const CachedNoteItem({
    super.key,
    required this.noteId,
    this.isOmitEnabled = true,
    required this.onUserIconPressed,
    required this.onReactionPressed,
    required this.onHashtagPressed,
    required this.onUrlPressed,
    required this.onReplyPressed,
    required this.onRenotePressed,
    required this.onReactionAddPressed,
    required this.onMoreActionPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = cachedNoteProvider(id: noteId);

    final note = ref.watch(provider);
    if (note == null) {
      return const SizedBox.shrink();
    }

    ref.listen(noteUpdateStreamingProvider(noteId: noteId), (_, next) {
      if (next is AsyncData) {
        ref.read(provider.notifier).sync();
      }
    });

    final mainNote = note.renote ?? note;

    final maybeIndifferenceNote = useMemoized(() {
      return note.renote?.user.id == note.user.id || mainNote.text?.contains('\$[') == true;
    }, [note.id]);

    final isForceSensitiveRemoved = ref.watch(noteForceSensitiveRemovedProvider);

    return NoteItem(
      note: note,
      isOmmited: isOmitEnabled && (maybeIndifferenceNote || note.renote?.myRawReactionEmoji != null),
      isForceSensitiveRemoved: isForceSensitiveRemoved,
      onUserIconPressed: () => onUserIconPressed(note.renote?.user.id ?? note.user.id),
      onReactionPressed: onReactionPressed,
      onHashtagPressed: onHashtagPressed,
      onUrlPressed: onUrlPressed,
      onReplyPressed: () => onReplyPressed(note.renote?.id ?? note.id),
      onRenotePressed: () => onRenotePressed(note.renote?.id ?? note.id),
      onReactionAddPressed: onReactionAddPressed,
      onMoreActionPressed: onMoreActionPressed,
    );
  }
}
