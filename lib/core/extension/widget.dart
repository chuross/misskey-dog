import 'package:flutter/material.dart';

extension WidgetExt on Widget {
  Widget padding(EdgeInsetsGeometry padding) {
    return Padding(
      padding: padding,
      child: this,
    );
  }

  Widget align(AlignmentGeometry alignment) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }

  Widget expandWidth() {
    return SizedBox(
      width: double.infinity,
      child: this,
    );
  }
}
