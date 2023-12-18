import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/router/app_router.dart';
import 'package:misskey_dog/model/account/account_provider.dart';

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
          OutlinedButton(
            onPressed: () async {
              await ref.read(accountStateProvider.notifier).clear();
            },
            child: Text('ログアウト'.i18n),
          )
        ],
      ),
    );
  }
}
