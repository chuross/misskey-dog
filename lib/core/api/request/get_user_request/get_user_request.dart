import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/core/api/json_encodable.dart';

part 'get_user_request.freezed.dart';
part 'get_user_request.g.dart';

@freezed
abstract class GetUserRequest with _$GetUserRequest implements JsonEncodable {
  factory GetUserRequest({
    required String userId,
  }) = _GetUserRequest;

  factory GetUserRequest.fromJson(Map<String, dynamic> json) => _$GetUserRequestFromJson(json);
}
