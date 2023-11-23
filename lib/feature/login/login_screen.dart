import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:misskey_dog/core/extension/widget.dart';

@RoutePage()
class LoginScreen extends ConsumerWidget implements AutoRouteWrapper {
  const LoginScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return I18n(
      initialLocale: const Locale('ja', 'JP'),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Text('ログイン'.i18n).align(Alignment.center),
    );
  }
}
