import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/feature/note/share/note_list_view.dart';
import 'package:misskey_dog/model/note/notes_provider.dart';

final class KeywordNotesRoute extends GoRouteData {
  final String keyword;

  const KeywordNotesRoute({required this.keyword});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return KeywordNotesScreen(keyword: keyword);
  }
}

final class KeywordNotesScreen extends HookConsumerWidget {
  final String keyword;

  const KeywordNotesScreen({super.key, required this.keyword});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = searchNotesIdsWithCacheProvider(keyword: keyword);
    final noteIds = ref.watch(provider);

    return Scaffold(
      appBar: AppBar(title: Text(keyword)),
      body: NoteListView(
        noteIds: noteIds,
        onFetchNext: () => ref.read(provider.notifier).fetchNext(),
        onRefresh: () => ref.invalidate(provider),
      ),
    );
  }
}
