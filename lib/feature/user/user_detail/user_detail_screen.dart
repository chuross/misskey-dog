import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/view/screen_loading_view.dart';
import 'package:misskey_dog/feature/user/user_detail/user_notes.dart';
import 'package:misskey_dog/feature/user/user_detail/user_summary.dart';
import 'package:misskey_dog/model/note/note_provider.dart';
import 'package:misskey_dog/model/user/user.dart';
import 'package:misskey_dog/model/user/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_detail_screen.g.dart';

@riverpod
Future<User> _userDetail(_UserDetailRef ref, {required String userId}) async {
  final user = await ref.watch(userProvider(id: userId).future);
  for (final note in user.pinnedNotes ?? []) {
    ref.watch(cachedNoteProvider(id: note.id).notifier).update(note);
  }
  return user;
}

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
    final provider = _userDetailProvider(userId: userId);
    final user = ref.watch(provider);

    switch (user) {
      case AsyncData(:final value):
        final tabs = useMemoized(
          () => [
            (title: '概要'.i18n, child: UserSummary(user: value)),
            (title: 'ノート'.i18n, child: UserNotes(userId: userId)),
            (title: 'メディア'.i18n, child: UserNotes(userId: userId, hasFiles: true)),
          ],
          [user.value],
        );

        return DefaultTabController(
          length: tabs.length,
          child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (_, __) => [
                SliverAppBar(
                  expandedHeight: 200,
                  leading: Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(left: 4),
                    decoration: BoxDecoration(color: Colors.black.withOpacity(0.2), shape: BoxShape.circle),
                    child: BackButton(
                      onPressed: () => context.pop(),
                      color: Colors.white,
                    ),
                  ),
                  actions: [
                    Container(
                      margin: const EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(color: Colors.black.withOpacity(0.2), shape: BoxShape.circle),
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
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
                            begin: const Alignment(0.0, 0.5),
                            end: Alignment.bottomCenter,
                            colors: [Colors.white.withOpacity(0.0), Colors.white.withOpacity(0.85), Colors.white],
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
