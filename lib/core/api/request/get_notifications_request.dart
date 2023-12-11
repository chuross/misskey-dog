import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_notifications_request.freezed.dart';
part 'get_notifications_request.g.dart';

@freezed
class GetNotificationsRequest with _$GetNotificationsRequest {
  factory GetNotificationsRequest({
    String? untilId,
    int? limit,
  }) = _GetNotificationsRequest;

  factory GetNotificationsRequest.fromJson(Map<String, dynamic> json) => _$GetNotificationsRequestFromJson(json);
}
