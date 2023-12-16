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
import 'package:misskey_dog/feature/login/login_callback_screen.dart' as _i6;
import 'package:misskey_dog/feature/login/login_screen.dart' as _i7;
import 'package:misskey_dog/feature/note/hash_tag_notes_screen.dart' as _i2;
import 'package:misskey_dog/feature/note/note_creation_screen.dart' as _i8;
import 'package:misskey_dog/feature/note/search_keyword_screen.dart' as _i5;
import 'package:misskey_dog/feature/notification/notifications_screen.dart'
    as _i9;
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
    HashtagNotesRoute.name: (routeData) {
      final args = routeData.argsAs<HashtagNotesRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.HashtagNotesScreen(
          key: args.key,
          hashtag: args.hashtag,
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
          thumbnailUrl: args.thumbnailUrl,
        ),
      );
    },
    KeywordNotesRoute.name: (routeData) {
      final args = routeData.argsAs<KeywordNotesRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.KeywordNotesScreen(
          key: args.key,
          keyword: args.keyword,
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
            child: _i6.LoginCallbackScreen(
          key: args.key,
          host: args.host,
          session: args.session,
        )),
      );
    },
    LoginRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: const _i7.LoginScreen()),
      );
    },
    NoteCreationRoute.name: (routeData) {
      final args = routeData.argsAs<NoteCreationRouteArgs>(
          orElse: () => const NoteCreationRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.NoteCreationScreen(
          key: args.key,
          relatedNoteId: args.relatedNoteId,
          isRenoted: args.isRenoted,
        ),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NotificationsScreen(),
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
/// [_i2.HashtagNotesScreen]
class HashtagNotesRoute extends _i11.PageRouteInfo<HashtagNotesRouteArgs> {
  HashtagNotesRoute({
    _i12.Key? key,
    required String hashtag,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          HashtagNotesRoute.name,
          args: HashtagNotesRouteArgs(
            key: key,
            hashtag: hashtag,
          ),
          initialChildren: children,
        );

  static const String name = 'HashtagNotesRoute';

  static const _i11.PageInfo<HashtagNotesRouteArgs> page =
      _i11.PageInfo<HashtagNotesRouteArgs>(name);
}

class HashtagNotesRouteArgs {
  const HashtagNotesRouteArgs({
    this.key,
    required this.hashtag,
  });

  final _i12.Key? key;

  final String hashtag;

  @override
  String toString() {
    return 'HashtagNotesRouteArgs{key: $key, hashtag: $hashtag}';
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
    String? thumbnailUrl,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          ImageDetailRoute.name,
          args: ImageDetailRouteArgs(
            key: key,
            imageUrl: imageUrl,
            thumbnailUrl: thumbnailUrl,
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
    this.thumbnailUrl,
  });

  final _i12.Key? key;

  final String imageUrl;

  final String? thumbnailUrl;

  @override
  String toString() {
    return 'ImageDetailRouteArgs{key: $key, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl}';
  }
}

/// generated route for
/// [_i5.KeywordNotesScreen]
class KeywordNotesRoute extends _i11.PageRouteInfo<KeywordNotesRouteArgs> {
  KeywordNotesRoute({
    _i12.Key? key,
    required String keyword,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          KeywordNotesRoute.name,
          args: KeywordNotesRouteArgs(
            key: key,
            keyword: keyword,
          ),
          initialChildren: children,
        );

  static const String name = 'KeywordNotesRoute';

  static const _i11.PageInfo<KeywordNotesRouteArgs> page =
      _i11.PageInfo<KeywordNotesRouteArgs>(name);
}

class KeywordNotesRouteArgs {
  const KeywordNotesRouteArgs({
    this.key,
    required this.keyword,
  });

  final _i12.Key? key;

  final String keyword;

  @override
  String toString() {
    return 'KeywordNotesRouteArgs{key: $key, keyword: $keyword}';
  }
}

/// generated route for
/// [_i6.LoginCallbackScreen]
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
/// [_i7.LoginScreen]
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
/// [_i8.NoteCreationScreen]
class NoteCreationRoute extends _i11.PageRouteInfo<NoteCreationRouteArgs> {
  NoteCreationRoute({
    _i12.Key? key,
    String? relatedNoteId,
    bool isRenoted = false,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          NoteCreationRoute.name,
          args: NoteCreationRouteArgs(
            key: key,
            relatedNoteId: relatedNoteId,
            isRenoted: isRenoted,
          ),
          initialChildren: children,
        );

  static const String name = 'NoteCreationRoute';

  static const _i11.PageInfo<NoteCreationRouteArgs> page =
      _i11.PageInfo<NoteCreationRouteArgs>(name);
}

class NoteCreationRouteArgs {
  const NoteCreationRouteArgs({
    this.key,
    this.relatedNoteId,
    this.isRenoted = false,
  });

  final _i12.Key? key;

  final String? relatedNoteId;

  final bool isRenoted;

  @override
  String toString() {
    return 'NoteCreationRouteArgs{key: $key, relatedNoteId: $relatedNoteId, isRenoted: $isRenoted}';
  }
}

/// generated route for
/// [_i9.NotificationsScreen]
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
