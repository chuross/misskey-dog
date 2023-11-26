import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji.freezed.dart';

sealed class Emoji {}

@freezed
abstract class LocalEmoji with _$LocalEmoji implements Emoji {
  const factory LocalEmoji({
    required String name,
    required String url,
  }) = _LocalEmoji;

  factory LocalEmoji.fromJson(Map<String, dynamic> json) => _$LocalEmojiFromJson(json);
}

@freezed
abstract class PlainEmoji with _$PlainEmoji implements Emoji {
  const factory PlainEmoji({
    required String text,
  }) = _PlainEmoji;

  factory PlainEmoji.fromJson(Map<String, dynamic> json) => _$PlainEmojiFromJson(json);
}
