import 'package:auto_route/auto_route.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';

@AutoRouterConfig()
final class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(page: LoginRoute.page, initial: true),
      AutoRoute(page: LoginCallbackRoute.page, path: '/auth/callback', fullMatch: true),
    ];
  }
}
