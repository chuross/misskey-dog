import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/get_global_notes_request.dart';
import 'package:misskey_dog/core/api/request/get_hash_tag_notes_request.dart';
import 'package:misskey_dog/core/api/request/get_local_notes_request.dart';
import 'package:misskey_dog/core/api/request/get_notes_request.dart';
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
      _bindNoteCache(note);
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
      _bindNoteCache(note);
    }

    state = AsyncData([...state.requireValue, ...newNotes.map((note) => note.id)]);
  }

  void onNoteCreated(Note note) {
    final noteIds = state.value;
    if (noteIds == null) return;

    _bindNoteCache(note);
    state = AsyncData([note.id, ...state.requireValue]);
  }

  void _bindNoteCache(Note note) {
    ref.watch(cachedNoteProvider(id: note.id).notifier).update(note);
    ref.listen(cachedNoteProvider(id: note.id), (_, __) {});
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
      _bindNoteCache(note);
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
      _bindNoteCache(note);
    }

    state = AsyncData([...state.value!, ...newNotes.map((note) => note.id)]);
  }

  void onNoteCreated(Note note) {
    final noteIds = state.value;
    if (noteIds == null) return;

    _bindNoteCache(note);
    state = AsyncData([note.id, ...state.requireValue]);
  }

  void _bindNoteCache(Note note) {
    ref.watch(cachedNoteProvider(id: note.id).notifier).update(note);
    ref.listen(cachedNoteProvider(id: note.id), (_, __) {});
  }
}

@riverpod
final class SearchNotesIdsWithCache extends _$SearchNotesIdsWithCache {
  @override
  Future<List<String>> build({required String keyword, bool? hasFiles}) async {
    final client = await ref.watch(misskeyClientProvider().future);

    final notes = await client.getNotes(
      request: GetNotesRequest(
        query: keyword,
        limit: 100,
      ).toJson().removeAllNullValueKeys(),
    );

    for (final note in notes) {
      _bindNoteCache(note);
    }

    return notes.map((note) => note.id).toList();
  }

  Future<void> fetchNext() async {
    if (state.isLoading) return;

    final lastNoteId = state.value?.lastOrNull;
    if (lastNoteId == null) return;

    final client = await ref.watch(misskeyClientProvider().future);

    final newNotes = await client.getNotes(
      request: GetNotesRequest(
        query: keyword,
        untilId: lastNoteId,
        limit: 100,
      ).toJson().removeAllNullValueKeys(),
    );

    for (final note in newNotes) {
      _bindNoteCache(note);
    }

    state = AsyncData([...state.requireValue, ...newNotes.map((note) => note.id)]);
  }

  void _bindNoteCache(Note note) {
    ref.watch(cachedNoteProvider(id: note.id).notifier).update(note);
    ref.listen(cachedNoteProvider(id: note.id), (_, __) {});
  }
}

@riverpod
final class HashtagNoteIdsWithCache extends _$HashtagNoteIdsWithCache {
  String get _replacedHashTag => hashtag.replaceAll('#', '');

  @override
  Future<List<String>> build({
    required String hashtag,
    bool? hasFiles,
  }) async {
    final client = await ref.watch(misskeyClientProvider().future);

    final notes = await client.getHashTagNotes(
      request: GetHashTagNotesRequest(
        hashTag: _replacedHashTag,
        hasFiles: hasFiles,
        limit: 100,
      ).toJson().removeAllNullValueKeys(),
    );

    for (final note in notes) {
      _bindNoteCache(note);
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
        hashTag: _replacedHashTag,
        hasFiles: hasFiles,
        untilId: lastNoteId,
        limit: 100,
      ).toJson().removeAllNullValueKeys(),
    );

    for (final note in newNotes) {
      _bindNoteCache(note);
    }

    state = AsyncData([...state.value!, ...newNotes.map((note) => note.id)]);
  }

  void _bindNoteCache(Note note) {
    ref.watch(cachedNoteProvider(id: note.id).notifier).update(note);
    ref.listen(cachedNoteProvider(id: note.id), (_, __) {});
  }
}
