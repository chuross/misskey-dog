import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:misskey_dog/core/extension/object.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';
import 'package:misskey_dog/core/view/screen_loading_view.dart';
import 'package:misskey_dog/feature/home/home_global_timeline.dart';
import 'package:misskey_dog/feature/home/home_local_timeline.dart';
import 'package:misskey_dog/feature/home/home_media_timeline.dart';
import 'package:misskey_dog/model/account/account_provider.dart';

part 'home_screen.freezed.dart';

@RoutePage()
final class HomeScreen extends HookConsumerWidget implements AutoRouteWrapper {
  static final _tabs = [
    _HomeTab(title: 'ローカル'.i18n, child: const HomeLocalTimeline()),
    _HomeTab(title: 'メディア'.i18n, child: const HomeMediaTimeline()),
    _HomeTab(title: 'グローバル'.i18n, child: const HomeGlobalTimeline()),
  ];

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = ref.watch(accountStateProvider);

    switch (account) {
      case AsyncData(value: final account):
        return DefaultTabController(
          length: _tabs.length,
          child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (BuildContext _, bool __) => [
                SliverAppBar(
                  title: const Text('Misskey Dog'),
                  leading: IconButton(
                    icon: account.mapOrElse(
                      (account) => CircleAvatar(
                        foregroundImage: CachedNetworkImageProvider(account.user.avatarUrl ?? ''),
                      ),
                      elseValue: const Icon(Icons.person),
                    ),
                    onPressed: () => context.router.push(const AccountRoute()),
                  ),
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        context.router.push(const SearchRoute());
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.notifications_none_outlined),
                      onPressed: () {
                        context.router.push(const NotificationsRoute());
                      },
                    ),
                  ],
                  bottom: TabBar(tabs: _tabs.map((tab) => Tab(text: tab.title)).toList()),
                ),
              ],
              body: TabBarView(children: _tabs.map((tab) => tab.child).toList()),
            ),
          ),
        );
      default:
        return ScreenLoadingView(value: account, onRetry: () => ref.invalidate(accountStateProvider));
    }
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return I18n(child: this);
  }
}

@freezed
class HomeTab with _$HomeTab {
  const factory HomeTab({
    required String title,
    required Widget child,
  }) = _HomeTab;
}
