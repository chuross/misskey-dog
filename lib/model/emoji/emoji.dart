import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji.freezed.dart';
part 'emoji.g.dart';

sealed class Emoji {
  String get id;
}

@freezed
abstract class LocalEmoji with _$LocalEmoji implements Emoji {
  const LocalEmoji._();

  const factory LocalEmoji({
    required String name,
    String? url,
  }) = _LocalEmoji;

  @override
  String get id => name;

  factory LocalEmoji.fromJson(Map<String, dynamic> json) => _$LocalEmojiFromJson(json);
}

@freezed
abstract class PlainEmoji with _$PlainEmoji implements Emoji {
  const PlainEmoji._();

  const factory PlainEmoji({
    required String text,
  }) = _PlainEmoji;

  @override
  String get id => text;

  factory PlainEmoji.fromJson(Map<String, dynamic> json) => _$PlainEmojiFromJson(json);
}
