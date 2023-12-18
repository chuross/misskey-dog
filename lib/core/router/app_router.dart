import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:misskey_dog/feature/account/account_screen.dart';
import 'package:misskey_dog/feature/home/home_screen.dart';
import 'package:misskey_dog/feature/image/image_detail_screen.dart';
import 'package:misskey_dog/feature/login/login_callback_screen.dart';
import 'package:misskey_dog/feature/login/login_screen.dart';
import 'package:misskey_dog/feature/note/hash_tag_notes_screen.dart';
import 'package:misskey_dog/feature/note/note_creation_screen.dart';
import 'package:misskey_dog/feature/note/search_keyword_screen.dart';
import 'package:misskey_dog/feature/notification/notifications_screen.dart';
import 'package:misskey_dog/feature/search/search_screen.dart';

part 'app_router.g.dart';

@TypedGoRoute<HomeRoute>(path: '/', routes: [
  TypedGoRoute<AccountRoute>(path: 'account'),
  TypedGoRoute<ImageDetailRoute>(path: 'image_detail'),
  TypedGoRoute<SearchRoute>(path: 'notes/search'),
  TypedGoRoute<KeywordNotesRoute>(path: 'notes/keyword'),
  TypedGoRoute<HashtagNotesRoute>(path: 'notes/hashtag'),
  TypedGoRoute<NoteCreationRoute>(path: 'notes/create'),
  TypedGoRoute<NotificationsRoute>(path: 'notifications'),
])
final class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

final class AccountRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AccountScreen();
  }
}

final class ImageDetailRoute extends GoRouteData {
  final String imageUrl;
  final String? thumbnailUrl;

  const ImageDetailRoute({
    required this.imageUrl,
    this.thumbnailUrl,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ImageDetailScreen(imageUrl: imageUrl, thumbnailUrl: thumbnailUrl);
  }
}

final class KeywordNotesRoute extends GoRouteData {
  final String keyword;

  const KeywordNotesRoute({required this.keyword});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return KeywordNotesScreen(keyword: keyword);
  }
}

final class HashtagNotesRoute extends GoRouteData {
  final String hashtag;

  const HashtagNotesRoute({required this.hashtag});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HashtagNotesScreen(hashtag: hashtag);
  }
}

final class NoteCreationRoute extends GoRouteData {
  final String? relatedNoteId;
  final bool isRenoted;

  const NoteCreationRoute({this.relatedNoteId, this.isRenoted = false});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return NoteCreationScreen(relatedNoteId: relatedNoteId, isRenoted: isRenoted);
  }
}

final class NotificationsRoute extends GoRouteData {
  const NotificationsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NotificationsScreen();
  }
}

final class SearchRoute extends GoRouteData {
  const SearchRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SearchScreen();
  }
}

@TypedGoRoute<LoginRoute>(path: '/login')
final class LoginRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}

@TypedGoRoute<LoginCallbackRoute>(path: '/auth_callback')
final class LoginCallbackRoute extends GoRouteData {
  final String? host;
  final String? session;

  LoginCallbackRoute({this.host, this.session});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LoginCallbackScreen(host: host ?? '', session: host ?? '');
  }
}
