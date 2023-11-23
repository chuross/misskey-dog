// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:misskey_dog/feature/login/login_screen.dart' as _i1;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.WrappedRoute(child: _i1.LoginScreen(key: args.key)),
      );
    }
  };
}

/// generated route for
/// [_i1.LoginScreen]
class LoginRoute extends _i2.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i3.Key? key,
    List<_i2.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i2.PageInfo<LoginRouteArgs> page =
      _i2.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i3.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}
