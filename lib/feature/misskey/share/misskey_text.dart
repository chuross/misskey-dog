import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/feature/emoji/share/emoji_view.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';

final RegExp _surrogateRegex = RegExp(r'[\uD800-\uDBFF][\uDC00-\uDFFF]');
final RegExp _emojiRegex = RegExp(r':([A-Za-z0-9_]+):');
final RegExp _hashTagRegex = RegExp(r'(?<=\s)#\S+');
final RegExp _urlRegex = RegExp(r'https?://([\w-]+\.)+[\w-]+(/[\w-./?%&=#]*)?');

List<InlineSpan> _separateInlineSpans({
  required BuildContext context,
  required String text,
  required double height,
  required Map<String, String> externalTextEmojiUrlMap,
  required Function(String) onHashTagPressed,
  required Function(String) onUrlPressed,
}) {
  // RegExpはマルチバイト文字のインデックスが計算できないので、サロゲートペアをシングルバイトの文字に変換する
  final replacedText = text.replaceAllMapped(_surrogateRegex, (match) {
    return '_';
  });

  final emojiMatches = _emojiRegex.allMatches(replacedText);
  final hashTagMatches = _hashTagRegex.allMatches(replacedText);
  final urlMatches = _urlRegex.allMatches(replacedText);

  var spans = <InlineSpan>[];

  final remnants = text.characters.foldIndexed('', (index, previousValue, char) {
    if ([
      _applyEmojiSpan(
        spans: spans,
        previousValue: previousValue,
        index: index,
        height: height,
        emojiMatches: emojiMatches,
        externalTextEmojiUrlMap: externalTextEmojiUrlMap,
      ),
      _applyCliclableTextSpan(
        spans: spans,
        previousValue: previousValue,
        index: index,
        matches: hashTagMatches,
        context: context,
        onPressed: onHashTagPressed,
      ),
      _applyCliclableTextSpan(
        spans: spans,
        previousValue: previousValue,
        index: index,
        matches: urlMatches,
        context: context,
        onPressed: onUrlPressed,
      ),
    ].any((element) => element)) {
      return '';
    } else {
      // マッチしたものがなければ文字を積んで次のループへ
      return previousValue + char;
    }
  });

  // 余った文字列があればTextSpanに変換して追加する
  if (remnants.isNotEmpty) {
    spans.add(TextSpan(text: remnants));
  }

  return spans;
}

bool _applyEmojiSpan({
  required List<InlineSpan> spans,
  required String previousValue,
  required int index,
  required double height,
  required Iterable<RegExpMatch> emojiMatches,
  required Map<String, String> externalTextEmojiUrlMap,
}) {
  final match = emojiMatches.firstWhereOrNull((element) {
    return element.start <= index && index < element.end;
  });

  // 絵文字にマッチしている間は無視
  if (match != null && match.start != index) {
    return true;
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

    return true;
  }

  return false;
}

bool _applyCliclableTextSpan({
  required List<InlineSpan> spans,
  required String previousValue,
  required int index,
  required Iterable<RegExpMatch> matches,
  required BuildContext context,
  required Function(String) onPressed,
  int targetMatchGroup = 0,
}) {
  final match = matches.firstWhereOrNull((element) {
    return element.start <= index && index < element.end;
  });

  // URLにマッチしている間は無視
  if (match != null && match.start != index) {
    return true;
  }

  // URLにマッチしたらそれまでの文字列をTextSpanに変換して、絵文字Spanを追加する
  if (match?.start == index) {
    if (previousValue.isNotEmpty) spans.add(TextSpan(text: previousValue));

    final text = match?.group(targetMatchGroup);

    spans.add(TextSpan(
      text: text,
      style: TextStyle(color: context.theme.primaryColor),
      recognizer: TapGestureRecognizer()..onTap = () => onPressed(text ?? ''),
    ));

    return true;
  }

  return false;
}

final class MisskeyText extends HookWidget {
  final String text;
  final TextStyle? baseTextStyle;
  final Map<String, String> externalTextEmojiUrlMap;
  final TextOverflow overflow;
  final TextAlign textAlign;
  final Function(String)? onHashTagPressed;
  final Function(String)? onUrlPressed;

  const MisskeyText({
    super.key,
    required this.text,
    this.baseTextStyle,
    required this.externalTextEmojiUrlMap,
    this.overflow = TextOverflow.clip,
    this.textAlign = TextAlign.start,
    this.onHashTagPressed,
    this.onUrlPressed,
  });

  @override
  Widget build(BuildContext context) {
    final inlineSpans = useMemoized(
      () => _separateInlineSpans(
        context: context,
        text: text,
        height: baseTextStyle?.fontSize ?? 14,
        externalTextEmojiUrlMap: externalTextEmojiUrlMap,
        onHashTagPressed: onHashTagPressed ?? (_) {},
        onUrlPressed: onUrlPressed ?? (_) {},
      ),
      [text],
    );

    return RichText(
      softWrap: true,
      overflow: overflow,
      textAlign: textAlign,
      text: TextSpan(
        style: baseTextStyle,
        children: inlineSpans,
      ),
    );
  }
}
