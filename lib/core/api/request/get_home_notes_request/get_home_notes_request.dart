// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/core/api/json_encodable.dart';

part 'get_home_notes_request.freezed.dart';
part 'get_home_notes_request.g.dart';

@freezed
abstract class GetHomeNotesRequest with _$GetHomeNotesRequest implements JsonEncodable {
  @JsonSerializable(includeIfNull: false)
  const factory GetHomeNotesRequest({
    @JsonKey(name: 'withFiles') bool? hasFiles,
    String? untilId,
    int? limit,
  }) = _GetHomeNotesRequest;

  factory GetHomeNotesRequest.fromJson(Map<String, dynamic> json) => _$GetHomeNotesRequestFromJson(json);
}
