import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/get_global_notes_request.dart';
import 'package:misskey_dog/core/api/request/get_hash_tag_notes_request.dart';
import 'package:misskey_dog/core/api/request/get_local_notes_request.dart';
import 'package:misskey_dog/core/extension/map.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/note/note_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notes_provider.g.dart';

@riverpod
final class LocalNoteIdsWithCache extends _$LocalNoteIdsWithCache {
  @override
  Future<List<String>> build({bool? hasFiles}) async {
    final client = await ref.watch(misskeyClientProvider().future);

    final notes = await client.getLocalNotes(
      request: GetLocalNotesRequest(
        hasFiles: hasFiles,
        limit: 100,
      ).toJson().removeAllNullValueKeys(),
    );

    for (final note in notes) {
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
        untilId: lastNoteId,
        limit: 100,
      ).toJson().removeAllNullValueKeys(),
    );

    for (final note in newNotes) {
      ref.watch(cachedNoteProvider(id: note.id).notifier).update(note);
    }

    state = AsyncData([...state.requireValue, ...newNotes.map((note) => note.id)]);
  }

  void onNoteCreated(Note note) {
    final noteIds = state.value;
    if (noteIds == null) return;

    ref.watch(cachedNoteProvider(id: note.id).notifier).update(note);
    state = AsyncData([note.id, ...state.requireValue]);
  }
}

@riverpod
final class GlobalNoteIdsWithCache extends _$GlobalNoteIdsWithCache {
  @override
  Future<List<String>> build({
    bool? hasFiles,
  }) async {
    final client = await ref.watch(misskeyClientProvider().future);

    final notes = await client.getGlobalNotes(
      request: GetGlobalNotesRequest(
        hasFiles: hasFiles,
        limit: 100,
      ).toJson().removeAllNullValueKeys(),
    );

    for (final note in notes) {
      ref.watch(cachedNoteProvider(id: note.id).notifier).update(note);
    }

    return notes.map((note) => note.id).toList();
  }

  Future<void> fetchNext() async {
    if (state.isLoading) return;

    final lastNoteId = state.value?.lastOrNull;
    if (lastNoteId == null) return;

    final client = await ref.watch(misskeyClientProvider().future);

    final newNotes = await client.getGlobalNotes(
      request: GetLocalNotesRequest(
        hasFiles: hasFiles,
        untilId: lastNoteId,
        limit: 100,
      ).toJson().removeAllNullValueKeys(),
    );

    for (final note in newNotes) {
      ref.watch(cachedNoteProvider(id: note.id).notifier).update(note);
    }

    state = AsyncData([...state.value!, ...newNotes.map((note) => note.id)]);
  }

  void onNoteCreated(Note note) {
    final noteIds = state.value;
    if (noteIds == null) return;

    ref.watch(cachedNoteProvider(id: note.id).notifier).update(note);
    state = AsyncData([note.id, ...state.requireValue]);
  }
}

@riverpod
final class HashTagNoteIdsWithCache extends _$HashTagNoteIdsWithCache {
  String get replacedHashTag => hashTag.replaceAll('#', '');

  @override
  Future<List<String>> build({
    required String hashTag,
    bool? hasFiles,
  }) async {
    final client = await ref.watch(misskeyClientProvider().future);

    final notes = await client.getHashTagNotes(
      request: GetHashTagNotesRequest(
        hashTag: replacedHashTag,
        limit: 100,
      ).toJson().removeAllNullValueKeys(),
    );

    for (final note in notes) {
      ref.watch(cachedNoteProvider(id: note.id).notifier).update(note);
    }

    return notes.map((note) => note.id).toList();
  }

  Future<void> fetchNext() async {
    if (state.isLoading) return;

    final lastNoteId = state.value?.lastOrNull;
    if (lastNoteId == null) return;

    final client = await ref.watch(misskeyClientProvider().future);

    final newNotes = await client.getHashTagNotes(
      request: GetHashTagNotesRequest(
        hashTag: replacedHashTag,
        untilId: lastNoteId,
        limit: 100,
      ).toJson().removeAllNullValueKeys(),
    );

    for (final note in newNotes) {
      ref.watch(cachedNoteProvider(id: note.id).notifier).update(note);
    }

    state = AsyncData([...state.value!, ...newNotes.map((note) => note.id)]);
  }
}
