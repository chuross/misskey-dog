import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/model/account/account_state_provider.dart';

@RoutePage()
final class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
