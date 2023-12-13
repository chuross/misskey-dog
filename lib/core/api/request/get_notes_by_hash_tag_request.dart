// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_notes_by_hash_tag_request.freezed.dart';
part 'get_notes_by_hash_tag_request.g.dart';

@freezed
class GetNotesByHashTagRequest with _$GetNotesByHashTagRequest {
  const factory GetNotesByHashTagRequest({
    @JsonKey(name: 'tag') required String hashTag,
    int? limit,
    String? untilId,
  }) = _GetNotesByHashTagRequest;

  factory GetNotesByHashTagRequest.fromJson(Map<String, dynamic> json) => _$GetNotesByHashTagRequestFromJson(json);
}
