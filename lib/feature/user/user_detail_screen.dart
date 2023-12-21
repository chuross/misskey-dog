import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/feature/note/share/note_timeline.dart';
import 'package:misskey_dog/model/note/notes_provider.dart';

final class UserDetailRoute extends GoRouteData {
  final String userId;

  UserDetailRoute({required this.userId});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UserDetailScreen(userId: userId);
  }
}

final class UserDetailScreen extends HookWidget {
  final String userId;

  const UserDetailScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    final tabs = useMemoized(
      () => [
        (title: 'ノート'.i18n, child: _UserNotes(userId: userId)),
      ],
      [userId],
    );

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (_, __) => [
            SliverAppBar(
              title: Text('ユーザー'.i18n),
              bottom: TabBar(tabs: [
                for (final tab in tabs) Tab(text: tab.title),
              ]),
            ),
          ],
          body: TabBarView(children: [
            for (final tab in tabs) tab.child,
          ]),
        ),
      ),
    );
  }
}

final class _UserNotes extends ConsumerWidget {
  final String userId;

  const _UserNotes({required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = UserNotesIdsWithCacheProvider(userId: userId);
    final noteIds = ref.watch(provider);

    return NoteTimeline(
      noteIds: noteIds,
      onFetchNext: () => ref.read(provider.notifier).fetchNext(),
      onRefresh: () => ref.invalidate(provider),
    );
  }
}
