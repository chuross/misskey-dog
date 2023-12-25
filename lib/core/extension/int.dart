import 'package:intl/intl.dart';

extension IntExt on int {
  static final _commmaFormatter = NumberFormat('#,###');

  String get withCommma => _commmaFormatter.format(this);
}
