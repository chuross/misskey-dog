import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/string.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/hook/use_load_more.dart';
import 'package:misskey_dog/core/view/screen_loading_view.dart';
import 'package:misskey_dog/feature/note/share/cached_note_item.dart';

final class NoteTimeline extends HookWidget {
  final AsyncValue<List<String>> noteIds;
  final Function() onRefresh;
  final Function() onFetchNext;

  const NoteTimeline({super.key, required this.noteIds, required this.onRefresh, required this.onFetchNext});

  @override
  Widget build(BuildContext context) {
    final controller = useLoadMore(onNext: () => onFetchNext());

    switch (noteIds) {
      case AsyncData(value: final noteIds):
        return RefreshIndicator(
          onRefresh: () async => onRefresh(),
          child: CustomScrollView(
            controller: controller,
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final noteId = noteIds[index];

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
                  childCount: noteIds.length,
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
        );
      default:
        return ScreenLoadingView(value: noteIds, onRetry: () => onRefresh());
    }
  }
}
