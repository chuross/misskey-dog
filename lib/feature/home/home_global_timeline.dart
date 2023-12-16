import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/feature/note/share/note_timeline.dart';
import 'package:misskey_dog/model/note/note_provider.dart';
import 'package:misskey_dog/model/note/notes_provider.dart';
import 'package:misskey_dog/model/streaming/streaming_channel.dart';

final class HomeGlobalTimeline extends HookConsumerWidget {
  const HomeGlobalTimeline({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = globalNoteIdsWithCacheProvider();
    final streamingProvider = noteCreationStreamingProvider(channel: StreamingChannel.globalTimeline);
    final noteIds = ref.watch(provider);

    final shouldManualReload = useState(false);

    final controller = PrimaryScrollController.of(context);

    ref.listen(streamingProvider, (_, next) {
      if (controller.positions.isEmpty) {
        return;
      }

      switch (next) {
        case AsyncData(:final value):
          final isScrolling = controller.offset > 0;
          if (!isScrolling && !shouldManualReload.value) {
            ref.read(provider.notifier).onNoteCreated(value);
          } else {
            shouldManualReload.value = true;
          }
        case AsyncError():
          shouldManualReload.value = true;
      }
    });

    return NoteTimeline(
      noteIds: noteIds,
      shouldManualReload: shouldManualReload.value,
      onFetchNext: () => ref.read(provider.notifier).fetchNext(),
      onRefresh: () {
        ref.invalidate(provider);
        ref.invalidate(streamingProvider);
      },
      onManualReloadPressed: () {
        ref.invalidate(provider);
        shouldManualReload.value = false;
      },
    );
  }
}
