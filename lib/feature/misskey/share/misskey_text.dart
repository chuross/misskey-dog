import 'package:flutter/material.dart';

final class MisskeyText extends StatelessWidget {
  final String text;
  final TextStyle? baseTextStyle;

  const MisskeyText({super.key, required this.text, this.baseTextStyle});

  @override
  Widget build(BuildContext context) {
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
