import 'dart:convert';

import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/create_note_reaction_request.dart';
import 'package:misskey_dog/core/api/request/get_global_notes_request.dart';
import 'package:misskey_dog/core/api/request/get_local_notes_request.dart';
import 'package:misskey_dog/core/api/request/get_note_request.dart';
import 'package:misskey_dog/core/extension/map.dart';
import 'package:misskey_dog/core/extension/stream.dart';
import 'package:misskey_dog/core/logger/logger_provider.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/streaming/streaming_channel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'note_provider.g.dart';

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

    final targetNote = note.renote ?? note;

    final client = await ref.watch(misskeyClientProvider().future);
    await client.createNoteReaction(request: CreateNoteReactionRequest(noteId: targetNote.id, emojiId: emoji.id).toJson());

    // リアクションが反映されるまでラグがあるので少し待つ
    await Future.delayed(const Duration(milliseconds: 500));

    sync();
  }

  Future<void> sync() async {
    final client = await ref.watch(misskeyClientProvider().future);
    state = await client.getNote(request: GetNoteRequest(noteId: id).toJson());
  }
}

@riverpod
Stream<Note> noteCreationStreaming(NoteCreationStreamingRef ref, {required StreamingChannel channel}) {
  if (channel == StreamingChannel.main) {
    return Stream.error(ArgumentError('main channnel has no note streaming'));
  }
  return ref
      .watch(misskeyChannelStreamingProvider(channel: channel))
      .where((event) => event['type'] == 'note')
      .map((event) => event['body'])
      .map((event) => Note.fromJson(event));
}

@riverpod
Stream<dynamic> noteUpdateStreaming(NoteUpdateStreamingRef ref, {required String noteId}) {
  final log = ref.watch(logProvider);

  return ref
      .watch(misskeyStreamingProvider.future)
      .asStream()
      .map((connection) {
        log.d('@@@streaming:subNote:connect:noteId=$noteId');

        final (webSocketChannel, stream) = connection;

        webSocketChannel.sink.add(jsonEncode({
          'type': 'subNote',
          'body': {
            'id': noteId,
          },
        }));

        ref.onDispose(() {
          log.d('@@@streaming:subNote:disconnect:noteId=$noteId');

          webSocketChannel.sink.add(jsonEncode({
            'type': 'unsubNote',
            'body': {
              'id': noteId,
            },
          }));
        });

        return stream;
      })
      .flatten()
      .map((event) => jsonDecode(event))
      .where((event) => event['type'] == 'noteUpdated')
      .where((event) => event['body']['id'] == noteId)
      .map((event) => event['body']);
}
