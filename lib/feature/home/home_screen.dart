import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:misskey_dog/core/extension/async_value.dart';
import 'package:misskey_dog/core/extension/dynamic.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';
import 'package:misskey_dog/feature/home/home_local_timeline.dart';
import 'package:misskey_dog/feature/home/home_media_timeline.dart';
import 'package:misskey_dog/feature/home/home_note_creation_screen.dart';
import 'package:misskey_dog/model/account/account_provider.dart';

part 'home_screen.freezed.dart';

@RoutePage()
final class HomeScreen extends ConsumerWidget implements AutoRouteWrapper {
  static final _tabs = [
    _HomeTab(title: 'ローカル'.i18n, child: const HomeLocalTimeline()),
    _HomeTab(title: 'メディア'.i18n, child: const HomeMediaTimeline()),
  ];

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = ref.watch(accountStateProvider);

    return account.whenScreenLoading(
        ref: ref,
        onRetry: () => ref.invalidate(accountStateProvider),
        data: (account) {
          return DefaultTabController(
              length: _tabs.length,
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('Misskey Dog'),
                  actions: [
                    IconButton(
                      icon: account.mapOrElse(
                        func: (account) => CircleAvatar(
                          foregroundImage: NetworkImage(account.user.avatarUrl ?? ''),
                        ),
                        elseValue: const Icon(Icons.person),
                      ),
                      onPressed: () => context.router.push(const AccountRoute()),
                    ),
                  ],
                  bottom: TabBar(tabs: _tabs.map((tab) => Tab(text: tab.title)).toList()),
                ),
                body: TabBarView(children: _tabs.map((tab) => tab.child).toList()),
                floatingActionButton: Builder(builder: (context) {
                  return FloatingActionButton(
                    child: const Icon(Icons.edit),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        showDragHandle: true,
                        isScrollControlled: true,
                        builder: (_) {
                          return const HomeNoteCreationScreen().padding(
                            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                          );
                        },
                      );
                    },
                  );
                }),
              ));
        });
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
