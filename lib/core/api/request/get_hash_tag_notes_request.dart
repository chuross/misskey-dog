// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_hash_tag_notes_request.freezed.dart';
part 'get_hash_tag_notes_request.g.dart';

@freezed
class GetHashTagNotesRequest with _$GetHashTagNotesRequest {
  const factory GetHashTagNotesRequest({
    @JsonKey(name: 'tag') required String hashTag,
    int? limit,
    String? untilId,
  }) = _GetHashTagNotesRequest;

  factory GetHashTagNotesRequest.fromJson(Map<String, dynamic> json) => _$GetHashTagNotesRequestFromJson(json);
}
