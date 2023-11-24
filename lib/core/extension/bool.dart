import 'package:flutter/material.dart';

extension BoolExt on bool {
  Widget when({required Widget Function() tru, required Widget Function() fals}) {
    return this ? tru() : fals();
  }
}
