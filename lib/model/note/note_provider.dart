import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/get_notes_request.dart';
import 'package:misskey_dog/core/extension/map.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'note_provider.g.dart';

@riverpod
final class Notes extends _$Notes {
  @override
  Future<List<Note>> build({
    bool isLocal = false,
    int limit = 30,
  }) async {
    final client = await ref.watch(misskeyClientProvider().future);

    final notes = await client.notes(
      request: GetNotesRequest(
        isLocal: isLocal,
        limit: limit,
      ).toJson().removeAllNullValueKeys(),
    );

    return notes;
  }

  Future<void> fetchNext() async {
    final lastNote = state.value?.lastOrNull;
    if (lastNote == null) return;

    final client = await ref.watch(misskeyClientProvider().future);

    final newNotes = await client.notes(
      request: GetNotesRequest(
        sinceId: lastNote.id,
        isLocal: isLocal,
        limit: limit,
      ).toJson().removeAllNullValueKeys(),
    );

    state = AsyncData([...state.value!, ...newNotes]);
  }
}
