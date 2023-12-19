import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_mute_user_request.freezed.dart';
part 'create_mute_user_request.g.dart';

@freezed
class CreateMuteUser with _$CreateMuteUser {
  const factory CreateMuteUser({
    required String userId,
  }) = _CreateMuteUser;

  factory CreateMuteUser.fromJson(Map<String, dynamic> json) => _$CreateMuteUserFromJson(json);
}
