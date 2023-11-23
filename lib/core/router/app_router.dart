import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';
import 'package:misskey_dog/core/router/guard/auth_guard.dart';

@AutoRouterConfig()
final class AppRouter extends $AppRouter {
  final WidgetRef _ref;

  AppRouter(this._ref);

  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(page: LoginRoute.page, initial: true),
      AutoRoute(page: LoginCallbackRoute.page, path: '/auth/callback', fullMatch: true),
      AutoRoute(page: HomeRoute.page, guards: [AuthGuard(_ref)]),
    ];
  }
}
