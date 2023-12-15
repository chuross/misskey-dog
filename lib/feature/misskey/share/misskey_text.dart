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

enum _MatchKind {
  emoji,
  hashTag,
  url,
}

List<InlineSpan> _separateInlineSpans({
  required BuildContext context,
  required String text,
  required double height,
  required Map<String, String> externalTextEmojiUrlMap,
  required Function(String) onHashtagPressed,
  required Function(String) onUrlPressed,
}) {
  // RegExpはマルチバイト文字のインデックスが計算できないので、サロゲートペアをシングルバイトの文字に変換する
  final replacedText = text.replaceAllMapped(_surrogateRegex, (match) {
    return '_';
  });

  final emojiMatches = _emojiRegex.allMatches(replacedText).map((e) => (_MatchKind.emoji, e));
  final hashTagMatches = _hashTagRegex.allMatches(replacedText).map((e) => (_MatchKind.hashTag, e));
  final urlMatches = _urlRegex.allMatches(replacedText).map((e) => (_MatchKind.url, e));

  final matches = [
    ...emojiMatches,
    ...hashTagMatches,
    ...urlMatches,
  ].sortedBy<num>((e) => e.$2.start);

  if (matches.isEmpty) {
    return [TextSpan(text: text)];
  }

  final textChars = text.characters;

  final spans = matches.foldIndexed(<InlineSpan>[], (index, spans, curr) {
    final prevMatch = index > 0 ? matches.elementAtOrNull(index - 1) : null;
    final plainTextSpan = TextSpan(
      text: textChars.getRange(prevMatch?.$2.end ?? 0, curr.$2.start).join(),
      style: TextStyle(fontSize: height),
    );
    final additionalSpan = switch (curr.$1) {
      _MatchKind.emoji => _resolveEmoji(match: curr.$2, height: height, externalTextEmojiUrlMap: externalTextEmojiUrlMap),
      _MatchKind.hashTag => _resolveCliclableTextSpan(match: curr.$2, height: height, context: context, onPressed: onHashtagPressed),
      _MatchKind.url => _resolveCliclableTextSpan(match: curr.$2, height: height, context: context, onPressed: onUrlPressed),
    };

    spans.addAll([plainTextSpan, additionalSpan]);

    return spans;
  });

  final last = matches.lastOrNull;
  if (last != null) {
    final remainedText = textChars.getRange(last.$2.end, textChars.length).join();
    if (remainedText.isNotEmpty) {
      spans.add(TextSpan(text: remainedText, style: TextStyle(fontSize: height)));
    }
  }

  return spans;
}

WidgetSpan _resolveEmoji({
  required RegExpMatch match,
  required double height,
  required Map<String, String> externalTextEmojiUrlMap,
}) {
  final emojiName = match.group(1);
  final url = externalTextEmojiUrlMap[emojiName];
  final host = url?.isNotEmpty == true ? 'unknown' : '.';

  final emoji = switch (host) {
    (String host) when host == '.' => LocalEmoji(name: emojiName ?? ''),
    _ => ExternalEmoji(name: emojiName ?? '', host: host, url: url!),
  };

  return WidgetSpan(
    child: EmojiView(emoji: emoji, height: height + 4),
    alignment: PlaceholderAlignment.middle,
    baseline: TextBaseline.alphabetic,
  );
}

TextSpan _resolveCliclableTextSpan({
  required RegExpMatch match,
  required double height,
  required BuildContext context,
  required Function(String) onPressed,
}) {
  final text = match.group(0);

  return TextSpan(
    text: text,
    style: TextStyle(color: context.theme.primaryColor, fontSize: height),
    recognizer: TapGestureRecognizer()..onTap = () => onPressed(text ?? ''),
  );
}

final class MisskeyText extends HookWidget {
  final String text;
  final TextStyle? baseTextStyle;
  final Map<String, String> externalTextEmojiUrlMap;
  final TextOverflow overflow;
  final TextAlign textAlign;
  final Function(String)? onHashtagPressed;
  final Function(String)? onUrlPressed;

  const MisskeyText({
    super.key,
    required this.text,
    this.baseTextStyle,
    required this.externalTextEmojiUrlMap,
    this.overflow = TextOverflow.clip,
    this.textAlign = TextAlign.start,
    this.onHashtagPressed,
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
        onHashtagPressed: onHashtagPressed ?? (_) {},
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
