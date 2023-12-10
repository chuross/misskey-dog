import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji.freezed.dart';
part 'emoji.g.dart';

sealed class Emoji {
  String get id;

  // localEmoji => :ohayougozaimasu@.:
  // externalEmoji => :ohayougozaimasu@misskey.io:
  // PlainEmoji => 😀
  factory Emoji.resolve({required String rawEmoji, String? url}) {
    switch (rawEmoji) {
      case (String rawEmoji) when rawEmoji.startsWith(':'):
        var [emojiName, host] = rawEmoji.split('@');
        emojiName = emojiName.substring(1);
        host = host.substring(0, host.length - 1);

        return switch (rawEmoji) {
          (String _) when host == '.' => LocalEmoji(name: emojiName),
          _ => ExternalEmoji(name: emojiName, host: host, url: url!),
        };
      default:
        return PlainEmoji(text: rawEmoji);
    }
  }
}

@freezed
abstract class LocalEmoji with _$LocalEmoji implements Emoji {
  const LocalEmoji._();

  const factory LocalEmoji({
    required String name, // ex) ohayougozaimasu
    String? url,
  }) = _LocalEmoji;

  @override
  String get id => ':$name@.:';

  factory LocalEmoji.fromJson(Map<String, dynamic> json) => _$LocalEmojiFromJson(json);
}

@freezed
abstract class ExternalEmoji with _$ExternalEmoji implements Emoji {
  const ExternalEmoji._();

  const factory ExternalEmoji({
    required String name, // ex) ohayougozaimasu
    required String host, // ex) misskey.io
    required String url,
  }) = _ExternalEmoji;

  @override
  String get id => ':$name@$host:';

  factory ExternalEmoji.fromJson(Map<String, dynamic> json) => _$ExternalEmojiFromJson(json);
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
