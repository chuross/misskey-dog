// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
      $loginRoute,
      $loginCallbackRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'account',
          factory: $AccountRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'image_detail',
          factory: $ImageDetailRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'notes/search',
          factory: $SearchRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'notes/keyword',
          factory: $KeywordNotesRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'notes/hashtag',
          factory: $HashtagNotesRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'notes/create',
          factory: $NoteCreationRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'notifications',
          factory: $NotificationsRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AccountRouteExtension on AccountRoute {
  static AccountRoute _fromState(GoRouterState state) => AccountRoute();

  String get location => GoRouteData.$location(
        '/account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ImageDetailRouteExtension on ImageDetailRoute {
  static ImageDetailRoute _fromState(GoRouterState state) => ImageDetailRoute(
        imageUrl: state.uri.queryParameters['image-url']!,
        thumbnailUrl: state.uri.queryParameters['thumbnail-url'],
      );

  String get location => GoRouteData.$location(
        '/image_detail',
        queryParams: {
          'image-url': imageUrl,
          if (thumbnailUrl != null) 'thumbnail-url': thumbnailUrl,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SearchRouteExtension on SearchRoute {
  static SearchRoute _fromState(GoRouterState state) => const SearchRoute();

  String get location => GoRouteData.$location(
        '/notes/search',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $KeywordNotesRouteExtension on KeywordNotesRoute {
  static KeywordNotesRoute _fromState(GoRouterState state) => KeywordNotesRoute(
        keyword: state.uri.queryParameters['keyword']!,
      );

  String get location => GoRouteData.$location(
        '/notes/keyword',
        queryParams: {
          'keyword': keyword,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $HashtagNotesRouteExtension on HashtagNotesRoute {
  static HashtagNotesRoute _fromState(GoRouterState state) => HashtagNotesRoute(
        hashtag: state.uri.queryParameters['hashtag']!,
      );

  String get location => GoRouteData.$location(
        '/notes/hashtag',
        queryParams: {
          'hashtag': hashtag,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NoteCreationRouteExtension on NoteCreationRoute {
  static NoteCreationRoute _fromState(GoRouterState state) => NoteCreationRoute(
        relatedNoteId: state.uri.queryParameters['related-note-id'],
        isRenoted: _$convertMapValue(
                'is-renoted', state.uri.queryParameters, _$boolConverter) ??
            false,
      );

  String get location => GoRouteData.$location(
        '/notes/create',
        queryParams: {
          if (relatedNoteId != null) 'related-note-id': relatedNoteId,
          if (isRenoted != false) 'is-renoted': isRenoted.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NotificationsRouteExtension on NotificationsRoute {
  static NotificationsRoute _fromState(GoRouterState state) =>
      const NotificationsRoute();

  String get location => GoRouteData.$location(
        '/notifications',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

bool _$boolConverter(String value) {
  switch (value) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      throw UnsupportedError('Cannot convert "$value" into a bool.');
  }
}

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginCallbackRoute => GoRouteData.$route(
      path: '/auth/callback',
      factory: $LoginCallbackRouteExtension._fromState,
    );

extension $LoginCallbackRouteExtension on LoginCallbackRoute {
  static LoginCallbackRoute _fromState(GoRouterState state) =>
      LoginCallbackRoute();

  String get location => GoRouteData.$location(
        '/auth/callback',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
