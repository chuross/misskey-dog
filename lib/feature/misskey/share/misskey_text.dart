import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dog/feature/emoji/share/misskey_emoji.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'misskey_text.g.dart';

final RegExp _emojiReget = RegExp(r':([a-z0-9_]+):');

@riverpod
List<InlineSpan> _separateInlineSpans(
  _SeparateInlineSpansRef ref, {
  required String text,
  required double height,
}) {
  final emojiMatches = _emojiReget.allMatches(text);

  var spans = <InlineSpan>[];

  final remnants = text.runes.foldIndexed('', (index, previousValue, rune) {
    final match = emojiMatches.firstWhereOrNull((element) {
      return element.start <= index && index < element.end;
    });

    // 絵文字にマッチしている間は無視
    if (match != null && match.start != index) {
      return '';
    }

    // 絵文字にマッチしたらそれまでの文字列をTextSpanに変換して、絵文字Spanを追加する
    if (match?.start == index) {
      final emoji = LocalEmoji(name: match?.group(1) ?? '');
      if (previousValue.isNotEmpty) spans.add(TextSpan(text: previousValue));
      spans.add(WidgetSpan(
        child: MisskeyEmoji(emoji: emoji, height: height),
        alignment: PlaceholderAlignment.middle,
        baseline: TextBaseline.alphabetic,
      ));
      return '';
    }

    // マッチしたものがなければ文字を積んで次のループへ
    return previousValue + String.fromCharCode(rune);
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
