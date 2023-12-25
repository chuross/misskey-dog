// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/core/api/json_encodable.dart';

part 'get_user_notes_request.freezed.dart';
part 'get_user_notes_request.g.dart';

@freezed
class GetUserNotesRequest with _$GetUserNotesRequest implements JsonEncodable {
  @JsonSerializable(includeIfNull: false)
  factory GetUserNotesRequest({
    required String userId,
    @JsonKey(name: 'withFiles') bool? hasFiles,
    String? untilId,
    int? limit,
  }) = _GetUserNotesRequest;

  factory GetUserNotesRequest.fromJson(Map<String, dynamic> json) => _$GetUserNotesRequestFromJson(json);
}
