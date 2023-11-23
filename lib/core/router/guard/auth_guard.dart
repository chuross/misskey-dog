import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dog/core/auth/auth_state_provider.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';

final class AuthGuard extends AutoRouteGuard {
  final WidgetRef _ref;

  AuthGuard(this._ref);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final authentication = await _ref.read(authStateProvider.future);
    if (authentication != null) {
      resolver.next(true);
    } else {
      router.replace(LoginRoute());
      resolver.next(false);
    }
  }
}