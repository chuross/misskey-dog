import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_emoji_request.freezed.dart';
part 'get_emoji_request.g.dart';

@freezed
abstract class GetEmojiRequest with _$GetEmojiRequest {
  const factory GetEmojiRequest({
    required String name,
  }) = _GetEmojiRequest;

  factory GetEmojiRequest.fromJson(Map<String, dynamic> json) => _$GetEmojiRequestFromJson(json);
}
