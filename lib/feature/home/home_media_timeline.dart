import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dog/core/extension/async_value.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/logger/logger_provider.dart';
import 'package:misskey_dog/feature/note/share/note_item.dart';
import 'package:misskey_dog/model/note/note_provider.dart';

final class HomeMediaTimeline extends ConsumerWidget {
  const HomeMediaTimeline({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = localNoteIdsWithCacheProvider(hasFiles: true);
    final noteIds = ref.watch(provider);

    return noteIds.whenScreenLoading(
      log: ref.watch(logProvider),
      onRetry: () => ref.invalidate(provider),
      data: (notesIds) {
        return RefreshIndicator(
          onRefresh: () async => ref.invalidate(provider),
          child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 80),
            itemCount: notesIds.length,
            itemBuilder: (context, index) {
              final note = ref.watch(cachedNoteProvider(id: notesIds[index]));
              if (note == null) return const SizedBox.shrink();

              return Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: Divider.createBorderSide(context, color: context.dividerColorWithOpacity30),
                  ),
                ),
                child: NoteItem(
                  key: ValueKey(note.id),
                  note: note,
                  onReactionTap: (emoji) {
                    ref.read(cachedNoteProvider(id: note.id).notifier).reaction(emoji);
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
