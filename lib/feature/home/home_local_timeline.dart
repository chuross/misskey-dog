import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/feature/note/share/note_timeline.dart';
import 'package:misskey_dog/model/note/note_provider.dart';

final class HomeLocalTimeline extends ConsumerWidget {
  const HomeLocalTimeline({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = localNoteIdsWithCacheProvider();
    final noteIds = ref.watch(provider);

    return NoteTimeline(
      noteIds: noteIds,
      onRefresh: () => ref.invalidate(provider),
      onFetchNext: () => ref.read(provider.notifier).fetchNext(),
    );
  }
}
