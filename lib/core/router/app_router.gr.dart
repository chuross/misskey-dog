// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:misskey_dog/feature/account/account_screen.dart' as _i1;
import 'package:misskey_dog/feature/home/home_screen.dart' as _i3;
import 'package:misskey_dog/feature/image/image_detail_screen.dart' as _i4;
import 'package:misskey_dog/feature/login/login_callback_screen.dart' as _i5;
import 'package:misskey_dog/feature/login/login_screen.dart' as _i6;
import 'package:misskey_dog/feature/note/hash_tag_notes_screen.dart' as _i2;
import 'package:misskey_dog/feature/note/note_creation_screen.dart' as _i7;
import 'package:misskey_dog/feature/notification/notifications_screen.dart'
    as _i8;
import 'package:misskey_dog/feature/search/search_keyword_screen.dart' as _i9;
import 'package:misskey_dog/feature/search/search_screen.dart' as _i10;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountScreen(),
      );
    },
    HashTagNotesRoute.name: (routeData) {
      final args = routeData.argsAs<HashTagNotesRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.HashTagNotesScreen(
          key: args.key,
          hashTag: args.hashTag,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: const _i3.HomeScreen()),
      );
    },
    ImageDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ImageDetailRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ImageDetailScreen(
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
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(
            child: _i5.LoginCallbackScreen(
          key: args.key,
          host: args.host,
          session: args.session,
        )),
      );
    },
    LoginRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: const _i6.LoginScreen()),
      );
    },
    NoteCreationRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.NoteCreationScreen(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.NotificationsScreen(),
      );
    },
    SearchKeyWordRoute.name: (routeData) {
      final args = routeData.argsAs<SearchKeyWordRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.SearchKeyWordScreen(
          key: args.key,
          keyword: args.keyword,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SearchScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i11.PageRouteInfo<void> {
  const AccountRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HashTagNotesScreen]
class HashTagNotesRoute extends _i11.PageRouteInfo<HashTagNotesRouteArgs> {
  HashTagNotesRoute({
    _i12.Key? key,
    required String hashTag,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          HashTagNotesRoute.name,
          args: HashTagNotesRouteArgs(
            key: key,
            hashTag: hashTag,
          ),
          initialChildren: children,
        );

  static const String name = 'HashTagNotesRoute';

  static const _i11.PageInfo<HashTagNotesRouteArgs> page =
      _i11.PageInfo<HashTagNotesRouteArgs>(name);
}

class HashTagNotesRouteArgs {
  const HashTagNotesRouteArgs({
    this.key,
    required this.hashTag,
  });

  final _i12.Key? key;

  final String hashTag;

  @override
  String toString() {
    return 'HashTagNotesRouteArgs{key: $key, hashTag: $hashTag}';
  }
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ImageDetailScreen]
class ImageDetailRoute extends _i11.PageRouteInfo<ImageDetailRouteArgs> {
  ImageDetailRoute({
    _i12.Key? key,
    required String imageUrl,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          ImageDetailRoute.name,
          args: ImageDetailRouteArgs(
            key: key,
            imageUrl: imageUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'ImageDetailRoute';

  static const _i11.PageInfo<ImageDetailRouteArgs> page =
      _i11.PageInfo<ImageDetailRouteArgs>(name);
}

class ImageDetailRouteArgs {
  const ImageDetailRouteArgs({
    this.key,
    required this.imageUrl,
  });

  final _i12.Key? key;

  final String imageUrl;

  @override
  String toString() {
    return 'ImageDetailRouteArgs{key: $key, imageUrl: $imageUrl}';
  }
}

/// generated route for
/// [_i5.LoginCallbackScreen]
class LoginCallbackRoute extends _i11.PageRouteInfo<LoginCallbackRouteArgs> {
  LoginCallbackRoute({
    _i12.Key? key,
    String host = '',
    String session = '',
    List<_i11.PageRouteInfo>? children,
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

  static const _i11.PageInfo<LoginCallbackRouteArgs> page =
      _i11.PageInfo<LoginCallbackRouteArgs>(name);
}

class LoginCallbackRouteArgs {
  const LoginCallbackRouteArgs({
    this.key,
    this.host = '',
    this.session = '',
  });

  final _i12.Key? key;

  final String host;

  final String session;

  @override
  String toString() {
    return 'LoginCallbackRouteArgs{key: $key, host: $host, session: $session}';
  }
}

/// generated route for
/// [_i6.LoginScreen]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.NoteCreationScreen]
class NoteCreationRoute extends _i11.PageRouteInfo<void> {
  const NoteCreationRoute({List<_i11.PageRouteInfo>? children})
      : super(
          NoteCreationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoteCreationRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NotificationsScreen]
class NotificationsRoute extends _i11.PageRouteInfo<void> {
  const NotificationsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SearchKeyWordScreen]
class SearchKeyWordRoute extends _i11.PageRouteInfo<SearchKeyWordRouteArgs> {
  SearchKeyWordRoute({
    _i12.Key? key,
    required String keyword,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          SearchKeyWordRoute.name,
          args: SearchKeyWordRouteArgs(
            key: key,
            keyword: keyword,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchKeyWordRoute';

  static const _i11.PageInfo<SearchKeyWordRouteArgs> page =
      _i11.PageInfo<SearchKeyWordRouteArgs>(name);
}

class SearchKeyWordRouteArgs {
  const SearchKeyWordRouteArgs({
    this.key,
    required this.keyword,
  });

  final _i12.Key? key;

  final String keyword;

  @override
  String toString() {
    return 'SearchKeyWordRouteArgs{key: $key, keyword: $keyword}';
  }
}

/// generated route for
/// [_i10.SearchScreen]
class SearchRoute extends _i11.PageRouteInfo<void> {
  const SearchRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
