import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/feature/note/share/note_list_view.dart';
import 'package:misskey_dog/model/note/notes_provider.dart';

final class HashtagNotesRoute extends GoRouteData {
  final String hashtag;

  const HashtagNotesRoute({required this.hashtag});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HashtagNotesScreen(hashtag: hashtag);
  }
}

final class HashtagNotesScreen extends HookWidget {
  final String hashtag;

  const HashtagNotesScreen({super.key, required this.hashtag});

  @override
  Widget build(BuildContext context) {
    final tabs = useMemoized(
      () => [
        Tab(text: 'すべて'.i18n),
        Tab(text: 'メディア'.i18n),
      ],
      [hashtag],
    );

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (_, __) => [
            SliverAppBar(title: Text(hashtag), bottom: TabBar(tabs: tabs)),
          ],
          body: TabBarView(
            children: [
              Tab(child: _HashtagNotesList(hashtag: hashtag)),
              Tab(child: _HashtagNotesList(hashtag: hashtag, hasFiles: true)),
            ],
          ),
        ),
      ),
    );
  }
}

final class _HashtagNotesList extends ConsumerWidget {
  final String hashtag;
  final bool? hasFiles;

  const _HashtagNotesList({required this.hashtag, this.hasFiles});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = hashtagNoteIdsWithCacheProvider(hashtag: hashtag, hasFiles: hasFiles);
    final noteIds = ref.watch(provider);

    return NoteListView(
      noteIds: noteIds,
      onFetchNext: () => ref.read(provider.notifier).fetchNext(),
      onRefresh: () => ref.invalidate(provider),
    );
  }
}
