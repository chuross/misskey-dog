import 'package:i18n_extension/default.i18n.dart';
import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  static final DateFormat _dateFormat = DateFormat('yyyy/MM/dd');

  String get elapsedTimeLabel {
    final difference = DateTime.now().difference(this);

    if (difference.inSeconds < 60) {
      return '%d秒前'.i18n.fill([difference.inSeconds]);
    } else if (difference.inMinutes < 60) {
      return '%d分前'.i18n.fill([difference.inMinutes]);
    } else if (difference.inHours < 24) {
      return '%d時間前'.i18n.fill([difference.inHours]);
    } else {
      return _dateFormat.format(this);
    }
  }
}
