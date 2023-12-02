import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/core/extension/async_value.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/string.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/hook/use_load_more.dart';
import 'package:misskey_dog/core/logger/logger_provider.dart';
import 'package:misskey_dog/feature/note/share/note_item.dart';
import 'package:misskey_dog/model/note/note_provider.dart';

final class HomeMediaTimeline extends HookConsumerWidget {
  const HomeMediaTimeline({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = localNoteIdsWithCacheProvider(hasFiles: true);
    final noteIds = ref.watch(provider);

    final controller = useLoadMore(onNext: () => ref.watch(provider.notifier).fetchNext());

    return noteIds.whenScreenLoading(
      log: ref.watch(logProvider),
      onRetry: () => ref.invalidate(provider),
      data: (notesIds) {
        return RefreshIndicator(
          onRefresh: () async => ref.invalidate(provider),
          child: CustomScrollView(
            controller: controller,
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final note = ref.watch(cachedNoteProvider(id: notesIds[index]));
                    if (note == null) return const SizedBox.shrink();

                    return Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: Divider.createBorderSide(context, color: context.dividerColorWithOpacity30),
                        ),
                      ),
                      child: NoteItem(
                        key: note.id.toKey(),
                        note: note,
                        onReactionTap: (emoji) {
                          ref.read(cachedNoteProvider(id: note.id).notifier).reaction(emoji);
                        },
                      ),
                    );
                  },
                  childCount: notesIds.length,
                ),
              ),
              SliverToBoxAdapter(
                child: noteIds
                    .whenPartialLoading(
                        data: (_) => const SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ))
                    .align(Alignment.center)
                    .padding(const EdgeInsets.all(32)),
              ),
            ],
          ),
        );
      },
    );
  }
}
