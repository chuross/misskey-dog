// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/core/api/json_encodable.dart';

part 'get_notifications_request.freezed.dart';
part 'get_notifications_request.g.dart';

@freezed
class GetNotificationsRequest with _$GetNotificationsRequest implements JsonEncodable {
  @JsonSerializable(includeIfNull: false)
  const factory GetNotificationsRequest({
    String? untilId,
    int? limit,
  }) = _GetNotificationsRequest;

  factory GetNotificationsRequest.fromJson(Map<String, dynamic> json) => _$GetNotificationsRequestFromJson(json);
}
