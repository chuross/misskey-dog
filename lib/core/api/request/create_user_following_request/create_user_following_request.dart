import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_following_request.freezed.dart';
part 'create_user_following_request.g.dart';

@freezed
class CreateUserFollowingRequest with _$CreateUserFollowingRequest {
  factory CreateUserFollowingRequest({
    required String userId,
  }) = _CreateUserFollowingRequest;

  factory CreateUserFollowingRequest.fromJson(Map<String, dynamic> json) => _$CreateUserFollowingRequestFromJson(json);
}
