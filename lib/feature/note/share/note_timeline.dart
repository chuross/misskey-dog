import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/string.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/router/app_router.dart';

import 'package:misskey_dog/core/view/load_more_view.dart';
import 'package:misskey_dog/core/view/screen_loading_view.dart';
import 'package:misskey_dog/feature/emoji/emoji_reaction_creation_modal.dart';
import 'package:misskey_dog/feature/note/share/cached_note_item.dart';
import 'package:misskey_dog/model/note/note_provider.dart';
import 'package:url_launcher/url_launcher.dart';

final class NoteTimeline extends HookConsumerWidget {
  final AsyncValue<List<String>> noteIds;
  final bool shouldManualReload;
  final Function onFetchNext;
  final Function onRefresh;
  final Function? onManualReloadPressed;

  const NoteTimeline({
    super.key,
    required this.noteIds,
    required this.onFetchNext,
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
              child: LoadMoreView(
                onNext: onFetchNext,
                child: CustomScrollView(
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
                              onHashtagPressed: (hashtag) => HashtagNotesRoute(hashtag: hashtag).go(context),
                              onUrlPressed: (url) => launchUrl(Uri.parse(url)),
                              onReplyPressed: (noteId) => NoteCreationRoute(relatedNoteId: noteId).go(context),
                              onRenotePressed: (noteId) => NoteCreationRoute(relatedNoteId: noteId, isRenoted: true).go(context),
                              onReactionAddPressed: () => showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                showDragHandle: true,
                                builder: (_) => EmojiReactionCreationModal(onEmojiSelected: (emoji) {
                                  ref.read(cachedNoteProvider(id: noteId).notifier).reaction(emoji);
                                }),
                              ),
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
            ),
            if (shouldManualReload)
              ElevatedButton(
                onPressed: () => onManualReloadPressed?.call(),
                child: Text('最新の投稿を見る'.i18n),
              ).align(Alignment.topCenter),
          ],
        );
      default:
        return ScreenLoadingView(value: noteIds, onRetry: () => onRefresh());
    }
  }
}
