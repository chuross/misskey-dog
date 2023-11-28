// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:misskey_dog/feature/account/account_screen.dart' as _i1;
import 'package:misskey_dog/feature/home/home_screen.dart' as _i2;
import 'package:misskey_dog/feature/login/login_callback_screen.dart' as _i3;
import 'package:misskey_dog/feature/login/login_screen.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.WrappedRoute(child: const _i2.HomeScreen()),
      );
    },
    LoginCallbackRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<LoginCallbackRouteArgs>(
          orElse: () => LoginCallbackRouteArgs(
                host: queryParams.getString(
                  'host',
                  '',
                ),
                session: queryParams.getString(
                  'session',
                  '',
                ),
              ));
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.WrappedRoute(
            child: _i3.LoginCallbackScreen(
          key: args.key,
          host: args.host,
          session: args.session,
        )),
      );
    },
    LoginRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.WrappedRoute(child: const _i4.LoginScreen()),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i5.PageRouteInfo<void> {
  const AccountRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginCallbackScreen]
class LoginCallbackRoute extends _i5.PageRouteInfo<LoginCallbackRouteArgs> {
  LoginCallbackRoute({
    _i6.Key? key,
    String host = '',
    String session = '',
    List<_i5.PageRouteInfo>? children,
  }) : super(
          LoginCallbackRoute.name,
          args: LoginCallbackRouteArgs(
            key: key,
            host: host,
            session: session,
          ),
          rawQueryParams: {
            'host': host,
            'session': session,
          },
          initialChildren: children,
        );

  static const String name = 'LoginCallbackRoute';

  static const _i5.PageInfo<LoginCallbackRouteArgs> page =
      _i5.PageInfo<LoginCallbackRouteArgs>(name);
}

class LoginCallbackRouteArgs {
  const LoginCallbackRouteArgs({
    this.key,
    this.host = '',
    this.session = '',
  });

  final _i6.Key? key;

  final String host;

  final String session;

  @override
  String toString() {
    return 'LoginCallbackRouteArgs{key: $key, host: $host, session: $session}';
  }
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
