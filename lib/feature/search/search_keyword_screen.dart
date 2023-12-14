import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/feature/note/share/note_timeline.dart';
import 'package:misskey_dog/model/note/notes_provider.dart';

@RoutePage()
final class SearchKeyWordScreen extends HookConsumerWidget {
  final String keyword;

  const SearchKeyWordScreen({super.key, required this.keyword});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = searchNotesIdsWithCacheProvider(keyword: keyword);
    final noteIds = ref.watch(provider);

    return Scaffold(
      appBar: AppBar(title: Text(keyword)),
      body: NoteTimeline(
        noteIds: noteIds,
        onFetchNext: () => ref.read(provider.notifier).fetchNext(),
        onRefresh: () => ref.invalidate(provider),
      ),
    );
  }
}
