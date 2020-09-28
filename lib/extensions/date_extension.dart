import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  String format({String format}) {
    var f = 'yyyy.MM.dd HH:mm';
    if (format != null) {
      f = format;
    }
    initializeDateFormatting('ja_JP');
    final formatter = DateFormat(f, 'ja_JP');
    return formatter.format(this);
  }

  DateTime toYearMonthDay() {
    final date = DateTime(year, month, day, 0, 0, 0);
    return date.add(date.timeZoneOffset).toUtc();
  }
}
