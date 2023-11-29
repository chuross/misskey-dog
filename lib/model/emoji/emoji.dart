import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji.freezed.dart';
part 'emoji.g.dart';

sealed class Emoji {
  String get id;

  // localEmoji => :ohayougozaimasu@.:
  // PlainEmoji => 😀:@.:
  factory Emoji.resolve({required String rawEmojiWithHost}) {
    final [rawEmoji, host] = rawEmojiWithHost.split('@');

    if (rawEmoji.startsWith(':')) {
      return LocalEmoji(name: rawEmoji.substring(1));
    } else {
      return PlainEmoji(text: rawEmoji, host: host);
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
