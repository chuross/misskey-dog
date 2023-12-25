// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/core/api/json_encodable.dart';

part 'create_note_reaction_request.freezed.dart';
part 'create_note_reaction_request.g.dart';

@freezed
class CreateNoteReactionRequest with _$CreateNoteReactionRequest implements JsonEncodable {
  const factory CreateNoteReactionRequest({
    required String noteId,
    @JsonKey(name: 'reaction') required String emojiId,
  }) = _CreateNoteReactionRequest;

  factory CreateNoteReactionRequest.fromJson(Map<String, dynamic> json) => _$CreateNoteReactionRequestFromJson(json);
}
