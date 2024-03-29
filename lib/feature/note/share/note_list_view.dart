import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/string.dart';
import 'package:misskey_dog/core/extension/widget.dart';

import 'package:misskey_dog/core/view/load_more_view.dart';
import 'package:misskey_dog/core/view/screen_loading_view.dart';
import 'package:misskey_dog/feature/emoji/emoji_reaction_creation_modal.dart';
import 'package:misskey_dog/feature/home/home_screen.dart';
import 'package:misskey_dog/feature/note/hash_tag_notes_screen.dart';
import 'package:misskey_dog/feature/note/note_creation_screen.dart';
import 'package:misskey_dog/feature/note/note_more_action_modal.dart';
import 'package:misskey_dog/feature/note/share/cached_note_item.dart';
import 'package:misskey_dog/feature/user/user_detail/user_detail_screen.dart';
import 'package:misskey_dog/model/note/provider/note_provider.dart';
import 'package:url_launcher/url_launcher.dart';

final class NoteListView extends HookConsumerWidget {
  final AsyncValue<List<String>> noteIds;
  final bool shouldManualReload;
  final bool isOmitEnabled;
  final Function onFetchNext;
  final Function onRefresh;
  final Function? onManualReloadPressed;

  const NoteListView({
    super.key,
    required this.noteIds,
    this.shouldManualReload = false,
    this.isOmitEnabled = true,
    required this.onFetchNext,
    required this.onRefresh,
    this.onManualReloadPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (noteIds) {
      case AsyncData(:final value) when !noteIds.isRefreshing:
        return Stack(
          children: [
            RefreshIndicator.adaptive(
              onRefresh: () async => onRefresh(),
              child: LoadMoreView(
                onNext: onFetchNext,
                child: CustomScrollView(
                  slivers: [
                    SliverList.separated(
                      itemCount: value.length,
                      separatorBuilder: (_, __) => Divider(color: context.dividerColorWithOpacity30),
                      itemBuilder: (context, index) {
                        final noteId = value[index];

                        return CachedNoteItem(
                          key: noteId.toKey(),
                          noteId: noteId,
                          isOmitEnabled: isOmitEnabled,
                          onUserIconPressed: (userId) => UserDetailRoute(userId: userId).push(context),
                          onReactionPressed: (emoji) => ref.read(cachedNoteProvider(id: noteId).notifier).reaction(emoji),
                          onHashtagPressed: (hashtag) => HashtagNotesRoute(hashtag: hashtag).push(context),
                          onUrlPressed: (url) => launchUrl(Uri.parse(url)),
                          onReplyPressed: (noteId) => NoteCreationRoute(relatedNoteId: noteId).push(context),
                          onRenotePressed: (noteId) => NoteCreationRoute(relatedNoteId: noteId, isRenoted: true).push(context),
                          onReactionAddPressed: () => showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            showDragHandle: true,
                            builder: (_) => EmojiReactionCreationModal(onEmojiSelected: (emoji) {
                              ref.read(cachedNoteProvider(id: noteId).notifier).reaction(emoji);
                            }),
                          ),
                          onMoreActionPressed: () => showModalBottomSheet(
                            context: context,
                            showDragHandle: true,
                            builder: (_) => NoteMoreActionModal(noteId: noteId),
                          ),
                        );
                      },
                    ),
                    SliverToBoxAdapter(
                      child: const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator.adaptive(strokeWidth: 2),
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
