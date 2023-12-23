import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dog/feature/note/share/note_list_view.dart';
import 'package:misskey_dog/model/note/notes_provider.dart';

final class UserDetailNotes extends ConsumerWidget {
  final String userId;
  final bool hasFiles;

  const UserDetailNotes({super.key, required this.userId, this.hasFiles = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = userNotesIdsWithCacheProvider(userId: userId, hasFiles: hasFiles);
    final noteIds = ref.watch(provider);

    return NoteListView(
      noteIds: noteIds,
      onFetchNext: () => ref.read(provider.notifier).fetchNext(),
      onRefresh: () => ref.invalidate(provider),
    );
  }
}
