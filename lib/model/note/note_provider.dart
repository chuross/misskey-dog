import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/create_note_reaction_request.dart';
import 'package:misskey_dog/core/api/request/get_local_notes_request.dart';
import 'package:misskey_dog/core/api/request/get_note_request.dart';
import 'package:misskey_dog/core/api/request/get_notes_request.dart';
import 'package:misskey_dog/core/extension/map.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'note_provider.g.dart';

@riverpod
final class LocalNoteIdsWithCache extends _$LocalNoteIdsWithCache {
  @override
  Future<List<String>> build({
    bool? hasFiles,
    int limit = 100,
  }) async {
    final client = await ref.watch(misskeyClientProvider().future);

    final notes = await client.getLocalNotes(
      request: GetLocalNotesRequest(
        hasFiles: hasFiles,
        limit: limit,
      ).toJson().removeAllNullValueKeys(),
    );

    for (var note in notes) {
      ref.watch(cachedNoteProvider(id: note.id).notifier).update(note);
    }

    return notes.map((note) => note.id).toList();
  }

  Future<void> fetchNext() async {
    if (state.isLoading) return;

    final lastNoteId = state.value?.lastOrNull;
    if (lastNoteId == null) return;

    final client = await ref.watch(misskeyClientProvider().future);

    final newNotes = await client.getLocalNotes(
      request: GetLocalNotesRequest(
        hasFiles: hasFiles,
        limit: limit,
      ).toJson().removeAllNullValueKeys(),
    );

    for (var note in newNotes) {
      ref.watch(cachedNoteProvider(id: note.id).notifier).update(note);
    }

    state = AsyncData([...state.value!, ...newNotes.map((note) => note.id)]);
  }
}

@riverpod
final class CachedNote extends _$CachedNote {
  @override
  Note? build({required String id}) {
    ref.keepAlive();
    return null;
  }

  void update(Note note) {
    state = note;
  }

  Future<void> reaction(Emoji emoji) async {
    final note = state;
    if (note == null) return;

    final client = await ref.watch(misskeyClientProvider().future);
    await client.createNoteReaction(request: CreateNoteReactionRequest(noteId: note.id, emojiId: emoji.id).toJson());

    state = await client.getNote(request: GetNoteRequest(noteId: note.id).toJson());
  }
}
