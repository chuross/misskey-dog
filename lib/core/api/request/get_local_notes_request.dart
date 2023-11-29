import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_local_notes_request.freezed.dart';
part 'get_local_notes_request.g.dart';

@freezed
class GetLocalNotesRequest with _$GetLocalNotesRequest {
  const factory GetLocalNotesRequest({
    String? sinceId,
    int? limit,
  }) = _GetLocalNotesRequest;

  factory GetLocalNotesRequest.fromJson(Map<String, dynamic> json) => _$GetLocalNotesRequestFromJson(json);
}
