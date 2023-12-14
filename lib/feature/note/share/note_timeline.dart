import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/string.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';
import 'package:misskey_dog/core/view/screen_loading_view.dart';
import 'package:misskey_dog/feature/emoji/emoji_reaction_creation_modal.dart';
import 'package:misskey_dog/feature/note/share/cached_note_item.dart';
import 'package:misskey_dog/model/note/note_provider.dart';
import 'package:url_launcher/url_launcher.dart';

final class NoteTimeline extends HookConsumerWidget {
  final AsyncValue<List<String>> noteIds;
  final ScrollController scrollController;
  final bool shouldManualReload;
  final Function onRefresh;
  final Function? onManualReloadPressed;

  const NoteTimeline({
    super.key,
    required this.noteIds,
    required this.scrollController,
    required this.onRefresh,
    this.onManualReloadPressed,
    this.shouldManualReload = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (noteIds) {
      case AsyncData(:final value) when !noteIds.isRefreshing:
        return Stack(
          children: [
            RefreshIndicator(
              onRefresh: () async => onRefresh(),
              child: CustomScrollView(
                controller: scrollController,
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final noteId = value[index];

                        return Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: Divider.createBorderSide(context, color: context.dividerColorWithOpacity30),
                            ),
                          ),
                          child: CachedNoteItem(
                            key: noteId.toKey(),
                            noteId: noteId,
                            onReactionPressed: (emoji) => ref.read(cachedNoteProvider(id: noteId).notifier).reaction(emoji),
                            onReactionAddPressed: () => showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              showDragHandle: true,
                              builder: (_) => EmojiReactionCreationModal(onEmojiSelected: (emoji) {
                                ref.read(cachedNoteProvider(id: noteId).notifier).reaction(emoji);
                              }),
                            ),
                            onHashtagPressed: (hashtag) => context.pushRoute(HashtagNotesRoute(hashtag: hashtag)),
                            onUrlPressed: (url) => launchUrl(Uri.parse(url)),
                          ),
                        );
                      },
                      childCount: value.length,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: const SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ).align(Alignment.center).padding(const EdgeInsets.symmetric(vertical: 16)),
                  ),
                ],
              ),
            ),
            shouldManualReload
                ? ElevatedButton(
                    onPressed: () => onManualReloadPressed?.call(),
                    child: Text('最新の投稿を見る'.i18n),
                  ).align(Alignment.topCenter)
                : const SizedBox.shrink(),
          ],
        );
      default:
        return ScreenLoadingView(value: noteIds, onRetry: () => onRefresh());
    }
  }
}
