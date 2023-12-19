import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:misskey_dog/feature/account/account_screen.dart';
import 'package:misskey_dog/feature/image/image_detail_screen.dart';
import 'package:misskey_dog/feature/note/hash_tag_notes_screen.dart';
import 'package:misskey_dog/feature/note/note_creation_screen.dart';
import 'package:misskey_dog/feature/note/keyword_notes_screen.dart';
import 'package:misskey_dog/feature/notification/notifications_screen.dart';
import 'package:misskey_dog/feature/search/search_screen.dart';

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
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      fullscreenDialog: true,
      child: ImageDetailScreen(imageUrl: imageUrl, thumbnailUrl: thumbnailUrl),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
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
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      fullscreenDialog: true,
      child: NoteCreationScreen(relatedNoteId: relatedNoteId, isRenoted: isRenoted),
    );
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
