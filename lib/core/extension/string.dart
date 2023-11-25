import 'package:flutter/material.dart';

extension StringExt on String {
  Key toKey() => ValueKey(this);
}
