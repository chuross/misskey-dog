// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/core/api/json_encodable.dart';

part 'get_notes_request.freezed.dart';
part 'get_notes_request.g.dart';

@freezed
class GetNotesRequest with _$GetNotesRequest implements JsonEncodable {
  @JsonSerializable(includeIfNull: false)
  const factory GetNotesRequest({
    required String query,
    String? untilId,
    int? limit,
  }) = _GetNotesRequest;

  factory GetNotesRequest.fromJson(Map<String, dynamic> json) => _$GetNotesRequestFromJson(json);
}
