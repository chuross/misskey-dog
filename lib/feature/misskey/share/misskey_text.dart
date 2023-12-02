import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dog/feature/misskey/share/misskey_emoji.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'misskey_text.g.dart';

final RegExp _emojiReget = RegExp(r':([A-Za-z0-9_]+):');

@riverpod
List<InlineSpan> _separateInlineSpans(
  _SeparateInlineSpansRef ref, {
  required String text,
  required double height,
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
      final emoji = CustomEmoji(name: match?.group(1) ?? '', host: '.');
      if (previousValue.isNotEmpty) spans.add(TextSpan(text: previousValue));
      spans.add(WidgetSpan(
        child: MisskeyEmoji(emoji: emoji, height: height + 4),
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

final class MisskeyText extends ConsumerWidget {
  final String text;
  final TextStyle baseTextStyle;

  const MisskeyText({super.key, required this.text, required this.baseTextStyle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inlineSpans = ref.watch(_separateInlineSpansProvider(text: text, height: baseTextStyle.fontSize ?? 14));

    return RichText(
      softWrap: true,
      text: TextSpan(
        style: baseTextStyle,
        children: inlineSpans,
      ),
    );
  }
}
