import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/provider/auth/authorization_provider.dart';
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
    ref.listen(authorizationProvider(host: host, session: session), (_, current) {
      if (current.requireValue) {
        context.replaceRoute(LoginRoute());
      }
    });

    return Scaffold(
      body: const Text('weei').align(Alignment.center),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return I18n(child: this);
  }
}
