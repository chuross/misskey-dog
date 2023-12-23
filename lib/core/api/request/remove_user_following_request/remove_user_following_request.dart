import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_user_following_request.freezed.dart';
part 'remove_user_following_request.g.dart';

@freezed
class RemoveUserFollowingRequest with _$RemoveUserFollowingRequest {
  factory RemoveUserFollowingRequest({
    required String userId,
  }) = _RemoveUserFollowingRequest;

  factory RemoveUserFollowingRequest.fromJson(Map<String, dynamic> json) => _$RemoveUserFollowingRequestFromJson(json);
}
