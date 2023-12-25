import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/core/api/json_encodable.dart';

part 'create_mute_user_request.freezed.dart';
part 'create_mute_user_request.g.dart';

@freezed
class CreateMuteUserRequest with _$CreateMuteUserRequest implements JsonEncodable {
  const factory CreateMuteUserRequest({
    required String userId,
  }) = _CreateMuteUserRequest;

  factory CreateMuteUserRequest.fromJson(Map<String, dynamic> json) => _$CreateMuteUserRequestFromJson(json);
}
