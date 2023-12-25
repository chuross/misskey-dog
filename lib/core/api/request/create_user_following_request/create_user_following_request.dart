import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/core/api/json_encodable.dart';

part 'create_user_following_request.freezed.dart';
part 'create_user_following_request.g.dart';

@freezed
class CreateUserFollowingRequest with _$CreateUserFollowingRequest implements JsonEncodable {
  factory CreateUserFollowingRequest({
    required String userId,
  }) = _CreateUserFollowingRequest;

  factory CreateUserFollowingRequest.fromJson(Map<String, dynamic> json) => _$CreateUserFollowingRequestFromJson(json);
}
