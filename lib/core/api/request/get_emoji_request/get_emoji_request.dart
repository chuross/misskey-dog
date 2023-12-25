import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/core/api/json_encodable.dart';

part 'get_emoji_request.freezed.dart';
part 'get_emoji_request.g.dart';

@freezed
abstract class GetEmojiRequest with _$GetEmojiRequest implements JsonEncodable {
  const factory GetEmojiRequest({
    required String name,
  }) = _GetEmojiRequest;

  factory GetEmojiRequest.fromJson(Map<String, dynamic> json) => _$GetEmojiRequestFromJson(json);
}
