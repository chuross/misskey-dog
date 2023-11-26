import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/create_note_request.dart';
import 'package:misskey_dog/core/api/request/get_notes_request.dart';
import 'package:misskey_dog/core/extension/map.dart';
import 'package:misskey_dog/model/note/note.dart' as model;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_mutations_annotation/riverpod_mutations_annotation.dart';

part 'note_provider.g.dart';

@riverpod
final class Note extends _$Note {
  @override
  Future<model.Note?> build({String? id}) async {
    return null;
  }

  @mutation
  Future<void> create({required String text}) async {
    final client = await ref.watch(misskeyClientProvider().future);

    await client.createNote(
      request: CreateNoteRequest(
        text: text,
      ).toJson().removeAllNullValueKeys(),
    );
  }
}

@riverpod
final class Notes extends _$Notes {
  @override
  Future<List<model.Note>> build({
    bool isLocal = false,
    int limit = 50,
  }) async {
    final client = await ref.watch(misskeyClientProvider().future);

    final notes = await client.getNotes(
      request: GetNotesRequest(
        isLocal: isLocal,
        limit: limit,
      ).toJson().removeAllNullValueKeys(),
    );

    return notes;
  }

  Future<void> fetchNext() async {
    if (state.isLoading) return;

    final lastNote = state.value?.lastOrNull;
    if (lastNote == null) return;

    final client = await ref.watch(misskeyClientProvider().future);

    final newNotes = await client.getNotes(
      request: GetNotesRequest(
        sinceId: lastNote.id,
        isLocal: isLocal,
        limit: limit,
      ).toJson().removeAllNullValueKeys(),
    );

    state = AsyncData([...state.value!, ...newNotes]);
  }
}
