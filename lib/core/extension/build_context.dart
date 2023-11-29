import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  Color get dividerColor => Theme.of(this).dividerColor;
  Color get dividerColorWithOpacity50 => dividerColor.withOpacity(0.5);
  Color get dividerColorWithOpacity30 => dividerColor.withOpacity(0.3);
  Color get dividerColorWithOpacity20 => dividerColor.withOpacity(0.2);
  Color get dividerColorWithOpacity10 => dividerColor.withOpacity(0.1);
}
