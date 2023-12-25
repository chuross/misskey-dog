// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_global_notes_request.freezed.dart';
part 'get_global_notes_request.g.dart';

@freezed
class GetGlobalNotesRequest with _$GetGlobalNotesRequest {
  const factory GetGlobalNotesRequest({
    @JsonKey(name: 'withFiles') bool? hasFiles,
    String? untilId,
    int? limit,
  }) = _GetLocalNotesRequest;

  factory GetGlobalNotesRequest.fromJson(Map<String, dynamic> json) => _$GetGlobalNotesRequestFromJson(json);
}
