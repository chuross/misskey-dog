// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/core/api/json_encodable.dart';

part 'get_local_notes_request.freezed.dart';
part 'get_local_notes_request.g.dart';

@freezed
class GetLocalNotesRequest with _$GetLocalNotesRequest implements JsonEncodable {
  @JsonSerializable(includeIfNull: false)
  const factory GetLocalNotesRequest({
    @JsonKey(name: 'withFiles') bool? hasFiles,
    String? untilId,
    int? limit,
  }) = _GetLocalNotesRequest;

  factory GetLocalNotesRequest.fromJson(Map<String, dynamic> json) => _$GetLocalNotesRequestFromJson(json);
}
