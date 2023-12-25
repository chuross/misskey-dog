// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/core/api/json_encodable.dart';

part 'get_hash_tag_notes_request.freezed.dart';
part 'get_hash_tag_notes_request.g.dart';

@freezed
class GetHashTagNotesRequest with _$GetHashTagNotesRequest implements JsonEncodable {
  @JsonSerializable(includeIfNull: false)
  const factory GetHashTagNotesRequest({
    @JsonKey(name: 'tag') required String hashTag,
    @JsonKey(name: 'withFiles') bool? hasFiles,
    int? limit,
    String? untilId,
  }) = _GetHashTagNotesRequest;

  factory GetHashTagNotesRequest.fromJson(Map<String, dynamic> json) => _$GetHashTagNotesRequestFromJson(json);
}
