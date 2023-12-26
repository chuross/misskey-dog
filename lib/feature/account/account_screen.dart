import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/feature/home/home_screen.dart';
import 'package:misskey_dog/feature/login/login_screen.dart';
import 'package:misskey_dog/feature/user/user_detail/user_detail_screen.dart';
import 'package:misskey_dog/model/account/account_provider.dart';

final class AccountRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AccountScreen();
  }
}

final class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(accountStateProvider, (_, next) {
      switch (next) {
        case AsyncData(:final value) when value == null:
          LoginRoute().replace(context);
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('アカウント'.i18n)),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              ref.read(accountStateProvider.future).then((value) {
                UserDetailRoute(userId: value?.user.id ?? '').push(context);
              });
            },
            title: Text('プロフィール'.i18n),
          ),
          Divider(color: context.dividerColorWithOpacity30),
          ListTile(
            onTap: () async => await ref.read(accountStateProvider.notifier).clear(),
            title: Text('ログアウト'.i18n).align(Alignment.center),
            textColor: CupertinoColors.destructiveRed,
          ),
        ],
      ),
    );
  }
}
