import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/core/hook/use_load_more.dart';
import 'package:misskey_dog/feature/note/share/note_timeline.dart';
import 'package:misskey_dog/model/note/notes_provider.dart';

@RoutePage()
final class HashTagNotesScreen extends HookConsumerWidget {
  final String hashTag;

  const HashTagNotesScreen({super.key, required this.hashTag});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = hashTagNoteIdsWithCacheProvider(hashTag: hashTag);
    final noteIds = ref.watch(provider);

    final controller = useLoadMore(onNext: () => ref.read(provider.notifier).fetchNext());

    return Scaffold(
      appBar: AppBar(title: Text(hashTag)),
      body: NoteTimeline(
        noteIds: noteIds,
        scrollController: controller,
        onRefresh: () => ref.invalidate(provider),
      ),
    );
  }
}
