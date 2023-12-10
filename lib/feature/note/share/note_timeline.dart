import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/string.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/view/screen_loading_view.dart';
import 'package:misskey_dog/feature/note/share/cached_note_item.dart';

final class NoteTimeline extends HookWidget {
  final AsyncValue<List<String>> noteIds;
  final ScrollController scrollController;
  final bool shouldManualReload;
  final Function() onRefresh;
  final Function() onManualReloadPressed;
  final Function() onFetchNext;

  const NoteTimeline({
    super.key,
    required this.noteIds,
    required this.scrollController,
    required this.shouldManualReload,
    required this.onRefresh,
    required this.onManualReloadPressed,
    required this.onFetchNext,
  });

  @override
  Widget build(BuildContext context) {
    switch (noteIds) {
      case AsyncData(:final value) when !this.noteIds.isRefreshing:
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
                    onPressed: () {
                      scrollController.animateTo(
                        scrollController.position.minScrollExtent,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInCubic,
                      );
                      onManualReloadPressed();
                    },
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
