import 'package:date_calc/date_calc.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class DateHelper {
  const DateHelper._();

  static DateTime milliToDate(int millisecondsSinceEpoch) {
    return DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);
  }

  static String dateToString(DateTime date, String format) {
    return DateFormat(format).format(date);
  }

  static String milliToString(int millisecondsSinceEpoch, String format) {
    return DateFormat(format)
        .format(DateHelper.milliToDate(millisecondsSinceEpoch));
  }

  static DateTime date(
      {int year,
      int month,
      int day,
      int hour = 0,
      int minute = 0,
      int second = 0,
      bool isTimeZoneOffset = true}) {
    final now = DateTime.now();
    final date = DateTime(year ?? now.year, month ?? now.month, day ?? now.day,
        hour, minute, second);
    if (isTimeZoneOffset) {
      return date.add(date.timeZoneOffset).toUtc();
    } else {
      return date;
    }
  }

  static DateTime dateOfFirstDay(int year, int month) {
    final date = DateTime(year, month, 1);
    return date.add(date.timeZoneOffset).toUtc();
  }

  static DateTime dateOfLastDay(int year, int month) {
    final date = DateTime(year, month + 1, 0);
    return date.add(date.timeZoneOffset).toUtc();
  }

  static DateTime dateOfNowFirstDay() {
    final now = DateTime.now();
    final date = DateTime(now.year, now.month, 1);
    return date.add(date.timeZoneOffset).toUtc();
  }

  static DateTime dateOfNowLastDay() {
    final now = DateTime.now();
    final calc = DateCalc(now.year, now.month).addMonth(1);
    return calc.add(calc.timeZoneOffset).toUtc();
  }

  static DateTime dateOfNowFirstTime() {
    final now = DateTime.now();
    final date = DateTime(now.year, now.month, now.day, 0);
    return date.add(date.timeZoneOffset).toUtc();
  }

  static DateTime dateOfNowLastTime() {
    final now = DateTime.now();
    final date = DateTime(now.year, now.month, now.day + 1, 0);
    return date.add(date.timeZoneOffset).toUtc();
  }

  static DateTime startDayInWeek() {
    const dayOfWeek = 1;
    final now = DateTime.now();
    final date = DateTime(now.year, now.month, now.day);
    return date.subtract(Duration(days: date.weekday - dayOfWeek));
  }

  static DateTime endDayInWeek() {
    const dayOfWeek = 7;
    final now = DateTime.now();
    final date = DateTime(now.year, now.month, now.day);
    return date.subtract(Duration(days: date.weekday - dayOfWeek));
  }

  static DateTime setDate({@required int year, int month = 1, int days = 1}) {
    final date = DateTime(year, month, days);
    return date.add(date.timeZoneOffset).toUtc();
  }

  static int diffDays(DateTime a, DateTime b) =>
      a.toUtc().difference(b.toUtc()).inDays;
  static int diffHour(DateTime a, DateTime b) =>
      a.toUtc().difference(b.toUtc()).inHours;
  static int diffMinutes(DateTime a, DateTime b) =>
      a.toUtc().difference(b.toUtc()).inMinutes;

  // d1 >= d2 => true
  // d1 < d2 => false
  static bool isCompare(DateTime d1, DateTime d2) {
    if (d1.toUtc().compareTo(d2.toUtc()) != -1) {
      return true;
    } else {
      return false;
    }
  }

  // d1 == d2 => true
  // d1 != d2 => false
  static bool isEqual(DateTime d1, DateTime d2) {
    if (d1.toUtc().compareTo(d2.toUtc()) == 0) {
      return true;
    } else {
      return false;
    }
  }
}
