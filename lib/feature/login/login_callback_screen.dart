import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:misskey_dog/core/auth/authorization_provider.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';

@RoutePage()
final class LoginCallbackScreen extends ConsumerWidget implements AutoRouteWrapper {
  final String host;
  final String session;

  const LoginCallbackScreen({
    super.key,
    this.host = '',
    this.session = '',
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authentication = ref.watch(authorizationProvider(host: host, session: session));

    ref.listen(authorizationProvider(host: host, session: session), (_, current) {
      if (current.requireValue) {
        context.replaceRoute(const HomeRoute());
      }
    });

    return Scaffold(
      body: authentication.when(
        data: (_) => const SizedBox.shrink(),
        error: (_, __) => const Text('error').align(Alignment.center),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return I18n(child: this);
  }
}
