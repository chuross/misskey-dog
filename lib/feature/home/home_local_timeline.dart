import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/core/hook/use_load_more.dart';
import 'package:misskey_dog/feature/note/share/note_timeline.dart';
import 'package:misskey_dog/model/note/note_provider.dart';
import 'package:misskey_dog/model/streaming/streaming_channel.dart';

final class HomeLocalTimeline extends HookConsumerWidget {
  const HomeLocalTimeline({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = localNoteIdsWithCacheProvider();
    final noteIds = ref.watch(provider);

    final controller = useLoadMore(onNext: () => ref.read(provider.notifier).fetchNext());

    ref.listen(noteCreationStreamingProvider(channel: StreamingChannel.localTimeline), (_, next) {
      final isScrolling = controller.offset > 0;
      if (!isScrolling) {
        ref.read(provider.notifier).onNoteCreated(next.requireValue);
      }
    });

    return NoteTimeline(
      noteIds: noteIds,
      scrollController: controller,
      onRefresh: () => ref.invalidate(provider),
      onFetchNext: () => ref.read(provider.notifier).fetchNext(),
    );
  }
}
