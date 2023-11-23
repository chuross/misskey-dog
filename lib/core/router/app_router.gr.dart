// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:misskey_dog/feature/login/login_callback_screen.dart' as _i1;
import 'package:misskey_dog/feature/login/login_screen.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LoginCallbackRoute.name: (routeData) {
      final args = routeData.argsAs<LoginCallbackRouteArgs>(
          orElse: () => const LoginCallbackRouteArgs());
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.WrappedRoute(
            child: _i1.LoginCallbackScreen(
          key: args.key,
          session: args.session,
        )),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.WrappedRoute(child: _i2.LoginScreen(key: args.key)),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginCallbackScreen]
class LoginCallbackRoute extends _i3.PageRouteInfo<LoginCallbackRouteArgs> {
  LoginCallbackRoute({
    _i4.Key? key,
    String session = '',
    List<_i3.PageRouteInfo>? children,
  }) : super(
          LoginCallbackRoute.name,
          args: LoginCallbackRouteArgs(
            key: key,
            session: session,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginCallbackRoute';

  static const _i3.PageInfo<LoginCallbackRouteArgs> page =
      _i3.PageInfo<LoginCallbackRouteArgs>(name);
}

class LoginCallbackRouteArgs {
  const LoginCallbackRouteArgs({
    this.key,
    this.session = '',
  });

  final _i4.Key? key;

  final String session;

  @override
  String toString() {
    return 'LoginCallbackRouteArgs{key: $key, session: $session}';
  }
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i3.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i3.PageInfo<LoginRouteArgs> page =
      _i3.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}
