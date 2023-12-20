// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
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
          path: 'note_files/detail',
          factory: $NoteFileDetailRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'notes/search',
          factory: $SearchRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'notes/search/keyword',
          factory: $KeywordNotesRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'notes/search/hashtag',
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

extension $NoteFileDetailRouteExtension on NoteFileDetailRoute {
  static NoteFileDetailRoute _fromState(GoRouterState state) =>
      NoteFileDetailRoute(
        $extra: state.extra as ({List<NoteFile> files, NoteFile initialFile})?,
      );

  String get location => GoRouteData.$location(
        '/note_files/detail',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
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
        '/notes/search/keyword',
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
        '/notes/search/hashtag',
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
