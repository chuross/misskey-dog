import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_notes_request.freezed.dart';
part 'get_user_notes_request.g.dart';

@freezed
class GetUserNotesRequest with _$GetUserNotesRequest {
  factory GetUserNotesRequest({
    required String userId,
    String? untilId,
    int? limit,
  }) = _GetUserNotesRequest;

  factory GetUserNotesRequest.fromJson(Map<String, dynamic> json) => _$GetUserNotesRequestFromJson(json);
}
