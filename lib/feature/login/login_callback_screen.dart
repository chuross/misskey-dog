import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dog/core/logger/logger_provider.dart';
import 'package:misskey_dog/core/router/app_router.dart';
import 'package:misskey_dog/core/view/screen_loading_view.dart';
import 'package:misskey_dog/model/account/account_provider.dart';

final class LoginCallbackScreen extends ConsumerWidget {
  final String host;
  final String session;

  const LoginCallbackScreen({
    super.key,
    this.host = '',
    this.session = '',
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final log = ref.watch(logProvider);
    final authentication = ref.watch(accountAuthorizationProvider(host: host, session: session));

    log.d("@@@authorize: host=$host, session=$session");

    switch (authentication) {
      case AsyncData():
        return const SizedBox.shrink();
      default:
        return Scaffold(
          body: ScreenLoadingView(
              value: authentication,
              onRetry: () {
                ref.invalidate(accountAuthorizationProvider(host: host, session: session));
              }),
        );
    }
  }
}
