// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:misskey_dog/feature/account/account_screen.dart' as _i1;
import 'package:misskey_dog/feature/home/home_screen.dart' as _i2;
import 'package:misskey_dog/feature/image/image_detail_screen.dart' as _i3;
import 'package:misskey_dog/feature/login/login_callback_screen.dart' as _i4;
import 'package:misskey_dog/feature/login/login_screen.dart' as _i5;
import 'package:misskey_dog/feature/note/share/note_creation_screen.dart'
    as _i6;
import 'package:misskey_dog/feature/notification/notifications_screen.dart'
    as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(child: const _i2.HomeScreen()),
      );
    },
    ImageDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ImageDetailRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.ImageDetailScreen(
          key: args.key,
          imageUrl: args.imageUrl,
        ),
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
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(
            child: _i4.LoginCallbackScreen(
          key: args.key,
          host: args.host,
          session: args.session,
        )),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(child: const _i5.LoginScreen()),
      );
    },
    NoteCreationRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.NoteCreationScreen(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.NotificationsScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i8.PageRouteInfo<void> {
  const AccountRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ImageDetailScreen]
class ImageDetailRoute extends _i8.PageRouteInfo<ImageDetailRouteArgs> {
  ImageDetailRoute({
    _i9.Key? key,
    required String imageUrl,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          ImageDetailRoute.name,
          args: ImageDetailRouteArgs(
            key: key,
            imageUrl: imageUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'ImageDetailRoute';

  static const _i8.PageInfo<ImageDetailRouteArgs> page =
      _i8.PageInfo<ImageDetailRouteArgs>(name);
}

class ImageDetailRouteArgs {
  const ImageDetailRouteArgs({
    this.key,
    required this.imageUrl,
  });

  final _i9.Key? key;

  final String imageUrl;

  @override
  String toString() {
    return 'ImageDetailRouteArgs{key: $key, imageUrl: $imageUrl}';
  }
}

/// generated route for
/// [_i4.LoginCallbackScreen]
class LoginCallbackRoute extends _i8.PageRouteInfo<LoginCallbackRouteArgs> {
  LoginCallbackRoute({
    _i9.Key? key,
    String host = '',
    String session = '',
    List<_i8.PageRouteInfo>? children,
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

  static const _i8.PageInfo<LoginCallbackRouteArgs> page =
      _i8.PageInfo<LoginCallbackRouteArgs>(name);
}

class LoginCallbackRouteArgs {
  const LoginCallbackRouteArgs({
    this.key,
    this.host = '',
    this.session = '',
  });

  final _i9.Key? key;

  final String host;

  final String session;

  @override
  String toString() {
    return 'LoginCallbackRouteArgs{key: $key, host: $host, session: $session}';
  }
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NoteCreationScreen]
class NoteCreationRoute extends _i8.PageRouteInfo<void> {
  const NoteCreationRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NoteCreationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoteCreationRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.NotificationsScreen]
class NotificationsRoute extends _i8.PageRouteInfo<void> {
  const NotificationsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
