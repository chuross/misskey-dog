import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_request.freezed.dart';
part 'get_user_request.g.dart';

@freezed
abstract class GetUserRequest with _$GetUserRequest {
  factory GetUserRequest({
    required String userId,
  }) = _GetUserRequest;

  factory GetUserRequest.fromJson(Map<String, dynamic> json) => _$GetUserRequestFromJson(json);
}
