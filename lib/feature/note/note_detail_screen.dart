import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/view/screen_loading_view.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/note/note_provider.dart';

final class NoteDetailRoute extends GoRouteData {
  final String noteId;

  const NoteDetailRoute({required this.noteId});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return NoteDetailScreen(noteId: noteId);
  }
}

final class NoteDetailScreen extends ConsumerWidget {
  final String noteId;

  const NoteDetailScreen({super.key, required this.noteId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(noteProvider(id: noteId));

    switch (note) {
      case AsyncData(:final value):
        return Scaffold(
          appBar: AppBar(title: Text('投稿'.i18n)),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: _MainContnet(note: value)),
            ],
          ),
        );
      default:
        return ScreenLoadingView(value: note, onRetry: () => ref.invalidate(noteProvider(id: noteId)));
    }
  }
}

final class _MainContnet extends StatelessWidget {
  final Note note;
  Note get _mainNote => note.renote ?? note;

  const _MainContnet({required this.note});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox.square(
          dimension: 56,
          child: CircleAvatar(foregroundImage: CachedNetworkImageProvider(_mainNote.user.avatarUrl ?? '')),
        ),
      ],
    );
  }
}
