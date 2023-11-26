import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';
import 'package:misskey_dog/core/router/guard/auth_guard.dart';
import 'package:misskey_dog/core/router/guard/initial_screen_guard.dart';

@AutoRouterConfig()
final class AppRouter extends $AppRouter {
  final WidgetRef _ref;

  AppRouter(this._ref);

  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(page: HomeRoute.page, initial: true, guards: [InitialScreenGuard(), AuthGuard(_ref)]),
      AutoRoute(page: HomeNoteCreationRoute.page, guards: [AuthGuard(_ref)], fullscreenDialog: true),
      AutoRoute(page: AccountRoute.page, guards: [AuthGuard(_ref)]),
      // Login
      AutoRoute(page: LoginRoute.page),
      AutoRoute(page: LoginCallbackRoute.page, path: '/auth/callback', fullMatch: true),
    ];
  }
}
