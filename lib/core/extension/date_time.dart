import 'package:i18n_extension/default.i18n.dart';
import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  static final DateFormat _dateFormat = DateFormat('yyyy/MM/dd');
  static final DateFormat _dateTimeFormat = DateFormat('yyyy/MM/dd HH:mm:ss');

  String get dateLabel => _dateFormat.format(this);
  String get dateTimeLabel => _dateTimeFormat.format(this);

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
