import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/core/view/screen_loading_view.dart';
import 'package:misskey_dog/feature/home/home_screen.dart';
import 'package:misskey_dog/model/account/account_provider.dart';

part 'login_callback_screen.g.dart';

@TypedGoRoute<LoginCallbackRoute>(path: '/auth_callback')
final class LoginCallbackRoute extends GoRouteData {
  final String? host;
  final String? session;

  LoginCallbackRoute({this.host, this.session});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LoginCallbackScreen(host: host ?? '', session: session ?? '');
  }
}

final class LoginCallbackScreen extends HookConsumerWidget {
  final String host;
  final String session;

  const LoginCallbackScreen({
    super.key,
    this.host = '',
    this.session = '',
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authentication = ref.watch(accountAuthorizationProvider(host: host, session: session));

    if (authentication is AsyncData) {
      HomeRoute().replace(context);
    }

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
