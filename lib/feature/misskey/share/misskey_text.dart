import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:misskey_dog/feature/emoji/share/emoji_view.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';

final RegExp _emojiReget = RegExp(r':([A-Za-z0-9_]+):');

List<InlineSpan> _separateInlineSpans({
  required String text,
  required double height,
  required Map<String, String> externalTextEmojiUrlMap,
}) {
  // RegExpはマルチバイト文字のインデックスが計算できないので、マルチバイト文字をシングルバイトの文字に変換する
  final emojiMatches = _emojiReget.allMatches((String.fromCharCodes(text.runes.map((rune) {
    return rune > 0x7F ? 'A'.codeUnitAt(0) : rune;
  }))));

  var spans = <InlineSpan>[];

  final remnants = text.characters.foldIndexed('', (index, previousValue, char) {
    final match = emojiMatches.firstWhereOrNull((element) {
      return element.start <= index && index < element.end;
    });

    // 絵文字にマッチしている間は無視
    if (match != null && match.start != index) {
      return '';
    }

    // 絵文字にマッチしたらそれまでの文字列をTextSpanに変換して、絵文字Spanを追加する
    if (match?.start == index) {
      final emojiName = match?.group(1);
      final url = externalTextEmojiUrlMap[emojiName];
      final host = url?.isNotEmpty == true ? 'unknown' : '.';
      final emoji = switch (host) {
        (String host) when host == '.' => LocalEmoji(name: emojiName ?? ''),
        _ => ExternalEmoji(name: emojiName ?? '', host: host, url: url!),
      };

      if (previousValue.isNotEmpty) spans.add(TextSpan(text: previousValue));

      spans.add(WidgetSpan(
        child: EmojiView(emoji: emoji, height: height + 4),
        alignment: PlaceholderAlignment.middle,
        baseline: TextBaseline.alphabetic,
      ));

      return '';
    }

    // マッチしたものがなければ文字を積んで次のループへ
    return previousValue + char;
  });

  // 余った文字列があればTextSpanに変換して追加する
  if (remnants.isNotEmpty) {
    spans.add(TextSpan(text: remnants));
  }

  return spans;
}

final class MisskeyText extends HookWidget {
  final String text;
  final TextStyle baseTextStyle;
  final Map<String, String> externalTextEmojiUrlMap;

  const MisskeyText({
    super.key,
    required this.text,
    required this.baseTextStyle,
    required this.externalTextEmojiUrlMap,
  });

  @override
  Widget build(BuildContext context) {
    final inlineSpans = useMemoized(() {
      return _separateInlineSpans(
        text: text,
        height: baseTextStyle.fontSize ?? 14,
        externalTextEmojiUrlMap: externalTextEmojiUrlMap,
      );
    }, [text]);

    return RichText(
      softWrap: true,
      text: TextSpan(
        style: baseTextStyle,
        children: inlineSpans,
      ),
    );
  }
}
