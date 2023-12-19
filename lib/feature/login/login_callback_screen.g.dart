// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_callback_screen.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $loginCallbackRoute,
    ];

RouteBase get $loginCallbackRoute => GoRouteData.$route(
      path: '/auth_callback',
      factory: $LoginCallbackRouteExtension._fromState,
    );

extension $LoginCallbackRouteExtension on LoginCallbackRoute {
  static LoginCallbackRoute _fromState(GoRouterState state) =>
      LoginCallbackRoute(
        host: state.uri.queryParameters['host'],
        session: state.uri.queryParameters['session'],
      );

  String get location => GoRouteData.$location(
        '/auth_callback',
        queryParams: {
          if (host != null) 'host': host,
          if (session != null) 'session': session,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
