import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/model/note/note.dart';

part 'create_note_response.freezed.dart';
part 'create_note_response.g.dart';

@freezed
class CreateNoteResponse with _$CreateNoteResponse {
  factory CreateNoteResponse({
    required Note createdNote,
  }) = _CreateNoteResponse;

  factory CreateNoteResponse.fromJson(Map<String, dynamic> json) => _$CreateNoteResponseFromJson(json);
}
