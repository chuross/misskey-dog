import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/core/api/json_encodable.dart';

part 'get_notifications_request.freezed.dart';
part 'get_notifications_request.g.dart';

@freezed
class GetNotificationsRequest with _$GetNotificationsRequest implements JsonEncodable {
  factory GetNotificationsRequest({
    String? untilId,
    int? limit,
  }) = _GetNotificationsRequest;

  factory GetNotificationsRequest.fromJson(Map<String, dynamic> json) => _$GetNotificationsRequestFromJson(json);
}
