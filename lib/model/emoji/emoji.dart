import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji.freezed.dart';
part 'emoji.g.dart';

sealed class Emoji {
  String get id;

  // localEmoji => :ohayougozaimasu@.:
  // externalEmoji => :ohayougozaimasu@misskey.io:
  // PlainEmoji => 😀
  factory Emoji.resolve({required String rawEmoji, String? url}) {
    if (rawEmoji.startsWith(':')) {
      final [emojiName, host] = rawEmoji.split('@');
      return CustomEmoji(name: emojiName.substring(1), host: host.substring(0, host.length - 1), url: url);
    } else {
      return PlainEmoji(text: rawEmoji);
    }
  }
}

@freezed
abstract class CustomEmoji with _$CustomEmoji implements Emoji {
  const CustomEmoji._();

  const factory CustomEmoji({
    required String name, // ex) ohayougozaimasu
    String? host, // ex) misskey.io
    String? url,
  }) = _CustomEmoji;

  @override
  String get id => ':$name@$host:';

  bool get isLocal => host == '.';

  factory CustomEmoji.fromJson(Map<String, dynamic> json) => _$CustomEmojiFromJson(json);
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
