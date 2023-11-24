import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  Color get dividerColor => Theme.of(this).dividerColor;
}
