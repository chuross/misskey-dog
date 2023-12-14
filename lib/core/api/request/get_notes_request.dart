// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_notes_request.freezed.dart';
part 'get_notes_request.g.dart';

@freezed
class GetNotesRequest with _$GetNotesRequest {
  const factory GetNotesRequest({
    required String query,
    String? untilId,
    int? limit,
  }) = _GetNotesRequest;

  factory GetNotesRequest.fromJson(Map<String, dynamic> json) => _$GetNotesRequestFromJson(json);
}
