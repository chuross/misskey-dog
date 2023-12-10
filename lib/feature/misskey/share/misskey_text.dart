import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/feature/emoji/share/emoji_view.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';

final RegExp _emojiReget = RegExp(r':([A-Za-z0-9_]+):');
RegExp _urlReg = RegExp(r'https?://([\w-]+\.)+[\w-]+(/[\w-./?%&=#]*)?');

List<InlineSpan> _separateInlineSpans({
  required BuildContext context,
  required String text,
  required double height,
  required Map<String, String> externalTextEmojiUrlMap,
  required Function(String url) onUrlPressed,
}) {
  // RegExpはマルチバイト文字のインデックスが計算できないので、マルチバイト文字をシングルバイトの文字に変換する
  final emojiMatches = _emojiReget.allMatches((String.fromCharCodes(text.runes.map((rune) {
    return rune > 0x7F ? 'A'.codeUnitAt(0) : rune;
  }))));
  final urlMatches = _urlReg.allMatches(text);

  var spans = <InlineSpan>[];

  final remnants = text.characters.foldIndexed('', (index, previousValue, char) {
    if ([
      _applyEmojiSpan(spans, previousValue, index, height, emojiMatches, externalTextEmojiUrlMap),
      _applyUrlSpan(spans, previousValue, index, urlMatches, context, onUrlPressed),
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

bool _applyEmojiSpan(List<InlineSpan> spans, String previousValue, int index, double height, Iterable<RegExpMatch> emojiMatches,
    Map<String, String> externalTextEmojiUrlMap) {
  final emojiMatch = emojiMatches.firstWhereOrNull((element) {
    return element.start <= index && index < element.end;
  });

  // 絵文字にマッチしている間は無視
  if (emojiMatch != null && emojiMatch.start != index) {
    return true;
  }

  // 絵文字にマッチしたらそれまでの文字列をTextSpanに変換して、絵文字Spanを追加する
  if (emojiMatch?.start == index) {
    final emojiName = emojiMatch?.group(1);
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

bool _applyUrlSpan(
  List<InlineSpan> spans,
  String previousValue,
  int index,
  Iterable<RegExpMatch> urlMatches,
  BuildContext context,
  Function(String) onUrlPressed,
) {
  final urlMatch = urlMatches.firstWhereOrNull((element) {
    return element.start <= index && index < element.end;
  });

  // URLにマッチしている間は無視
  if (urlMatch != null && urlMatch.start != index) {
    return true;
  }

  // URLにマッチしたらそれまでの文字列をTextSpanに変換して、絵文字Spanを追加する
  if (urlMatch?.start == index) {
    if (previousValue.isNotEmpty) spans.add(TextSpan(text: previousValue));

    final url = urlMatch?.group(0);

    spans.add(TextSpan(
        text: url,
        style: TextStyle(color: context.theme.primaryColor),
        recognizer: TapGestureRecognizer()..onTap = () => onUrlPressed(url ?? '')));

    return true;
  }

  return false;
}

final class MisskeyText extends HookWidget {
  final String text;
  final TextStyle baseTextStyle;
  final Map<String, String> externalTextEmojiUrlMap;
  final Function(String url) onUrlPressed;

  const MisskeyText({
    super.key,
    required this.text,
    required this.baseTextStyle,
    required this.externalTextEmojiUrlMap,
    required this.onUrlPressed,
  });

  @override
  Widget build(BuildContext context) {
    final onUrlPressedCallback = useCallback(onUrlPressed);

    final inlineSpans = useMemoized(() {
      return _separateInlineSpans(
        context: context,
        text: text,
        height: baseTextStyle.fontSize ?? 14,
        externalTextEmojiUrlMap: externalTextEmojiUrlMap,
        onUrlPressed: onUrlPressedCallback,
      );
    }, [text, onUrlPressedCallback]);

    return RichText(
      softWrap: true,
      text: TextSpan(
        style: baseTextStyle,
        children: inlineSpans,
      ),
    );
  }
}
