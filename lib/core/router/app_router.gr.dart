// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:misskey_dog/feature/account/account_screen.dart' as _i1;
import 'package:misskey_dog/feature/home/home_note_creation_screen.dart' as _i2;
import 'package:misskey_dog/feature/home/home_screen.dart' as _i3;
import 'package:misskey_dog/feature/login/login_callback_screen.dart' as _i4;
import 'package:misskey_dog/feature/login/login_screen.dart' as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountScreen(),
      );
    },
    HomeNoteCreationRoute.name: (routeData) {
      final args = routeData.argsAs<HomeNoteCreationRouteArgs>(
          orElse: () => const HomeNoteCreationRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.HomeNoteCreationScreen(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.WrappedRoute(child: const _i3.HomeScreen()),
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
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.WrappedRoute(
            child: _i4.LoginCallbackScreen(
          key: args.key,
          host: args.host,
          session: args.session,
        )),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.WrappedRoute(child: _i5.LoginScreen(key: args.key)),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i6.PageRouteInfo<void> {
  const AccountRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeNoteCreationScreen]
class HomeNoteCreationRoute
    extends _i6.PageRouteInfo<HomeNoteCreationRouteArgs> {
  HomeNoteCreationRoute({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          HomeNoteCreationRoute.name,
          args: HomeNoteCreationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeNoteCreationRoute';

  static const _i6.PageInfo<HomeNoteCreationRouteArgs> page =
      _i6.PageInfo<HomeNoteCreationRouteArgs>(name);
}

class HomeNoteCreationRouteArgs {
  const HomeNoteCreationRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'HomeNoteCreationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginCallbackScreen]
class LoginCallbackRoute extends _i6.PageRouteInfo<LoginCallbackRouteArgs> {
  LoginCallbackRoute({
    _i7.Key? key,
    String host = '',
    String session = '',
    List<_i6.PageRouteInfo>? children,
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

  static const _i6.PageInfo<LoginCallbackRouteArgs> page =
      _i6.PageInfo<LoginCallbackRouteArgs>(name);
}

class LoginCallbackRouteArgs {
  const LoginCallbackRouteArgs({
    this.key,
    this.host = '',
    this.session = '',
  });

  final _i7.Key? key;

  final String host;

  final String session;

  @override
  String toString() {
    return 'LoginCallbackRouteArgs{key: $key, host: $host, session: $session}';
  }
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i6.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<LoginRouteArgs> page =
      _i6.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}
