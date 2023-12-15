import 'dart:convert';

import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/create_note_reaction_request.dart';
import 'package:misskey_dog/core/api/request/get_note_request.dart';
import 'package:misskey_dog/core/extension/stream.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/streaming/streaming_channel.dart';
import 'package:misskey_dog/model/streaming/streaming_event_kind.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'note_provider.g.dart';

@riverpod
final class CachedNote extends _$CachedNote {
  @override
  Note? build({required String id}) {
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
      .watch(misskeyChannelStreamingProvider(channel: channel).future)
      .asStream()
      .where((event) => event['type'] == StreamingEventKind.note.rawValue)
      .map((event) => event['body'])
      .map((event) => Note.fromJson(event));
}

@riverpod
Stream<dynamic> noteUpdateStreaming(NoteUpdateStreamingRef ref, {required String noteId}) {
  return ref
      .watch(misskeyStreamingProvider.future)
      .asStream()
      .map((connection) {
        final (webSocketChannel, stream) = connection;

        webSocketChannel.sink.add(jsonEncode({
          'type': 'subNote',
          'body': {
            'id': noteId,
          },
        }));

        ref.onDispose(() {
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
      .where((event) => event['type'] == StreamingEventKind.noteUpdated.rawValue)
      .where((event) => event['body']['id'] == noteId)
      .map((event) => event['body']);
}
