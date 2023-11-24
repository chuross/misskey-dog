import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/get_notes_request.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'note_provider.g.dart';

@riverpod
final class Notes extends _$Notes {
  @override
  Future<List<Note>> build({
    String? sinceId,
    bool isLocal = false,
    int limit = 30,
  }) async {
    final client = await ref.watch(misskeyClientProvider().future);

    final notes = await client.notes(
      request: GetNotesRequest(
        sinceId: sinceId,
        isLocal: isLocal,
        limit: limit,
      ),
    );

    return notes;
  }
}
