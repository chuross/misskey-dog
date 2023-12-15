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
    final authGuard = AuthGuard(_ref);

    return [
      AutoRoute(page: HomeRoute.page, initial: true, guards: [InitialScreenGuard(), authGuard]),
      AutoRoute(page: NoteCreationRoute.page, guards: [authGuard], fullscreenDialog: true),
      AutoRoute(page: AccountRoute.page, guards: [authGuard]),
      AutoRoute(page: NotificationsRoute.page, guards: [authGuard]),
      AutoRoute(page: SearchRoute.page, guards: [authGuard]),
      AutoRoute(page: HashtagNotesRoute.page, guards: [authGuard]),
      AutoRoute(page: KeywordNotesRoute.page, guards: [authGuard]),
      CustomRoute(
          page: ImageDetailRoute.page, guards: [AuthGuard(_ref)], fullscreenDialog: true, transitionsBuilder: TransitionsBuilders.fadeIn),
      // Login
      AutoRoute(page: LoginRoute.page),
      AutoRoute(page: LoginCallbackRoute.page, path: '/auth/callback', fullMatch: true),
    ];
  }
}
