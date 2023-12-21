import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/view/screen_loading_view.dart';
import 'package:misskey_dog/feature/misskey/share/misskey_text.dart';
import 'package:misskey_dog/feature/note/share/note_timeline.dart';
import 'package:misskey_dog/feature/user/user_provider.dart';
import 'package:misskey_dog/model/note/notes_provider.dart';

final class UserDetailRoute extends GoRouteData {
  final String userId;

  UserDetailRoute({required this.userId});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UserDetailScreen(userId: userId);
  }
}

final class UserDetailScreen extends HookConsumerWidget {
  final String userId;

  const UserDetailScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = useMemoized(
      () => [
        (title: 'ノート'.i18n, child: _UserNotes(userId: userId)),
      ],
      [userId],
    );

    final provider = userProvider(id: userId);
    final user = ref.watch(provider);

    switch (user) {
      case AsyncData(:final value):
        return DefaultTabController(
          length: tabs.length,
          child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (_, __) => [
                SliverAppBar(
                  expandedHeight: 280,
                  leading: Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(left: 4),
                    decoration: BoxDecoration(color: Colors.black.withOpacity(0.2), shape: BoxShape.circle),
                    child: BackButton(
                      onPressed: () => context.pop(),
                      color: Colors.white,
                    ),
                  ),
                  flexibleSpace: Stack(
                    children: [
                      if (value.bannerUrl != null)
                        Positioned.fill(
                          child: Image(
                            image: CachedNetworkImageProvider(value.bannerUrl ?? ''),
                            fit: BoxFit.cover,
                          ),
                        ),
                      if (value.bannerUrl == null)
                        Positioned.fill(
                          child: Container(color: context.theme.primaryColor.withOpacity(0.5)),
                        ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.white.withOpacity(0.0), Colors.white],
                          ),
                        ),
                      ),
                    ],
                  ),
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
      default:
        return Scaffold(body: ScreenLoadingView(value: user, onRetry: () => ref.invalidate(provider)));
    }
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
