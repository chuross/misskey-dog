import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';

part 'get_emojis_response.freezed.dart';
part 'get_emojis_response.g.dart';

@freezed
class GetEmojisResponse with _$GetEmojisResponse {
  const factory GetEmojisResponse({
    required List<LocalEmoji> emojis,
  }) = _GetEmojisResponse;

  factory GetEmojisResponse.fromJson(Map<String, dynamic> json) => _$GetEmojisResponseFromJson(json);
}
