import 'package:auto_route/auto_route.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';

final class InitialScreenGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final pendingRoute = resolver.pendingRoutes.lastOrNull;

    if (pendingRoute?.name == LoginCallbackRoute.name) {
      resolver.next(false);
      router.replaceAll([pendingRoute!.toPageRouteInfo()]);
      return;
    }

    resolver.next(true);
  }
}
