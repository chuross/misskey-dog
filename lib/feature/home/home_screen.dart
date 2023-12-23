import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/view/screen_loading_view.dart';
import 'package:misskey_dog/feature/account/account_screen.dart';
import 'package:misskey_dog/feature/home/internal/home_global_timeline.dart';
import 'package:misskey_dog/feature/home/internal/home_local_timeline.dart';
import 'package:misskey_dog/feature/home/internal/home_media_timeline.dart';
import 'package:misskey_dog/feature/home/internal/home_timeline.dart';
import 'package:misskey_dog/feature/note/hash_tag_notes_screen.dart';
import 'package:misskey_dog/feature/note/keyword_notes_screen.dart';
import 'package:misskey_dog/feature/note/note_creation_screen.dart';
import 'package:misskey_dog/feature/note/note_file_detail_screen.dart';
import 'package:misskey_dog/feature/notification/notifications_screen.dart';
import 'package:misskey_dog/feature/search/search_screen.dart';
import 'package:misskey_dog/feature/user/user_detail/user_detail_screen.dart';
import 'package:misskey_dog/model/account/account_provider.dart';
import 'package:misskey_dog/model/note/note_file.dart';
import 'package:misskey_dog/model/streaming/streaming_channel.dart';
import 'package:misskey_dog/model/streaming/streaming_event_kind.dart';

part 'home_screen.g.dart';

@TypedGoRoute<HomeRoute>(path: '/', routes: [
  TypedGoRoute<AccountRoute>(path: 'account'),
  TypedGoRoute<NoteFileDetailRoute>(path: 'note_files/detail'),
  TypedGoRoute<UserDetailRoute>(path: 'users/:userId'),
  TypedGoRoute<SearchRoute>(path: 'notes/search'),
  TypedGoRoute<KeywordNotesRoute>(path: 'notes/search/keyword'),
  TypedGoRoute<HashtagNotesRoute>(path: 'notes/search/hashtag'),
  TypedGoRoute<NoteCreationRoute>(path: 'notes/create'),
  TypedGoRoute<NotificationsRoute>(path: 'notifications'),
])
final class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

final class HomeScreen extends HookConsumerWidget {
  static final _tabs = [
    (title: 'ホーム'.i18n, child: const HomeTimeline()),
    (title: 'ローカル'.i18n, child: const HomeLocalTimeline()),
    (title: 'メディア'.i18n, child: const HomeMediaTimeline()),
    (title: 'グローバル'.i18n, child: const HomeGlobalTimeline()),
  ];

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = ref.watch(accountStateProvider);

    final hasUnreadNotifications = useState(false);
    ref.listen(misskeyChannelStreamingProvider(channel: StreamingChannel.main), (_, next) {
      if (next.value?['type'] == StreamingEventKind.unreadNotification.rawValue) {
        hasUnreadNotifications.value = true;
      }
    });

    switch (account) {
      case AsyncData(value: final account) when account != null:
        return DefaultTabController(
          length: _tabs.length,
          child: Scaffold(
            body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (BuildContext _, bool __) => [
                SliverAppBar(
                  title: const Text('Misskey Dog'),
                  leading: IconButton(
                    icon: switch (account.user.avatarUrl) {
                      final avatarUrl? => CircleAvatar(
                          foregroundImage: CachedNetworkImageProvider(avatarUrl),
                        ),
                      _ => const Icon(Icons.person),
                    },
                    onPressed: () => AccountRoute().push(context),
                  ),
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () => const SearchRoute().push(context),
                    ),
                    IconButton(
                      icon: Badge(
                        isLabelVisible: hasUnreadNotifications.value,
                        child: const Icon(Icons.notifications_none_outlined),
                      ),
                      onPressed: () {
                        hasUnreadNotifications.value = false;
                        const NotificationsRoute().push(context);
                      },
                    ),
                  ],
                  bottom: TabBar(tabs: [
                    for (final tab in _tabs) Tab(text: tab.title),
                  ]),
                ),
              ],
              body: TabBarView(children: [
                for (final tab in _tabs) tab.child,
              ]),
            ),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.edit),
              onPressed: () => const NoteCreationRoute().push(context),
            ),
          ),
        );
      default:
        return ScreenLoadingView(value: account, onRetry: () => ref.invalidate(accountStateProvider));
    }
  }
}
