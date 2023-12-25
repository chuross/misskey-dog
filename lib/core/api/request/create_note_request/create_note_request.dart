import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/core/api/json_encodable.dart';

part 'create_note_request.freezed.dart';
part 'create_note_request.g.dart';

@freezed
class CreateNoteRequest with _$CreateNoteRequest implements JsonEncodable {
  const factory CreateNoteRequest({
    String? text,
    String? replyId,
    String? renoteId,
  }) = _CreateNoteRequest;

  factory CreateNoteRequest.fromJson(Map<String, dynamic> json) => _$CreateNoteRequestFromJson(json);
}
