import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_note_request.freezed.dart';
part 'get_note_request.g.dart';

@freezed
class GetNoteRequest with _$GetNoteRequest {
  const factory GetNoteRequest({
    required String noteId,
  }) = _GetNoteRequest;

  factory GetNoteRequest.fromJson(Map<String, dynamic> json) => _$GetNoteRequestFromJson(json);
}
