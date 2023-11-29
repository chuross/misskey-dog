import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji.freezed.dart';
part 'emoji.g.dart';

sealed class Emoji {
  String get id;

  // localEmoji => :ohayougozaimasu@.:
  // externalEmoji => :ohayougozaimasu@misskey.io:
  // PlainEmoji => 😀:@.:
  factory Emoji.resolve({required String rawEmojiWithHost}) {
    final [rawEmoji, host] = rawEmojiWithHost.split('@');

    if (rawEmoji.startsWith(':')) {
      return CustomEmoji(name: rawEmoji.substring(1), host: host);
    } else {
      return PlainEmoji(text: rawEmoji, host: host);
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
    required String host,
  }) = _PlainEmoji;

  @override
  String get id => "$text@$host";

  factory PlainEmoji.fromJson(Map<String, dynamic> json) => _$PlainEmojiFromJson(json);
}
