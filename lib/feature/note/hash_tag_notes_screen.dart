import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/feature/note/share/note_timeline.dart';
import 'package:misskey_dog/model/note/notes_provider.dart';

@RoutePage()
final class HashtagNotesScreen extends HookConsumerWidget {
  final String hashtag;

  const HashtagNotesScreen({super.key, required this.hashtag});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = hashtagNoteIdsWithCacheProvider(hashtag: hashtag);
    final noteIds = ref.watch(provider);

    return Scaffold(
      appBar: AppBar(title: Text(hashtag)),
      body: NoteTimeline(
        noteIds: noteIds,
        onFetchNext: () => ref.read(provider.notifier).fetchNext(),
        onRefresh: () => ref.invalidate(provider),
      ),
    );
  }
}
