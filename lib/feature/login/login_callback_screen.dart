import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/provider/auth/auth_completion_provider.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';

@RoutePage()
final class LoginCallbackScreen extends ConsumerWidget implements AutoRouteWrapper {
  final String session;

  const LoginCallbackScreen({super.key, this.session = ''});

  @override
  Widget wrappedRoute(BuildContext context) {
    return I18n(child: this);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authCompletionProvider(session: session), (_, current) {
      if (current.requireValue) {
        context.replaceRoute(LoginRoute());
      }
    });

    return Scaffold(
      body: const Text('weei').align(Alignment.center),
    );
  }
}
