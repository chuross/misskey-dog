import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final class MisskeyText extends ConsumerWidget {
  final String text;
  final TextStyle? baseTextStyle;

  const MisskeyText({super.key, required this.text, this.baseTextStyle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RichText(
      softWrap: true,
      text: TextSpan(
        style: baseTextStyle,
        children: [
          TextSpan(text: text),
        ],
      ),
    );
  }
}
