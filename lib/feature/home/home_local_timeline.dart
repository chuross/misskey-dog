import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/hook/use_load_more.dart';
import 'package:misskey_dog/feature/note/share/note_timeline.dart';
import 'package:misskey_dog/model/note/note_provider.dart';
import 'package:misskey_dog/model/streaming/streaming_channel.dart';

final class HomeLocalTimeline extends HookConsumerWidget {
  const HomeLocalTimeline({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = localNoteIdsWithCacheProvider();
    final streamingProvider = noteCreationStreamingProvider(channel: StreamingChannel.localTimeline);
    final noteIds = ref.watch(provider);

    final controller = useLoadMore(onNext: () => ref.read(provider.notifier).fetchNext());

    final shouldManualReload = useState(false);

    ref.listen(streamingProvider, (_, next) {
      final isScrolling = controller.offset > 0;
      if (!isScrolling && !shouldManualReload.value) {
        ref.read(provider.notifier).onNoteCreated(next.requireValue);
      } else {
        shouldManualReload.value = true;
      }
    });

    return NoteTimeline(
      noteIds: noteIds,
      scrollController: controller,
      shouldManualReload: shouldManualReload.value,
      onRefresh: () {
        ref.invalidate(provider);
        ref.invalidate(streamingProvider);
      },
      onManualReloadPressed: () {
        ref.invalidate(provider);
        shouldManualReload.value = false;
      },
      onFetchNext: () => ref.read(provider.notifier).fetchNext(),
    );
  }
}
