import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../values/months_list.dart';
import '../number_form.dart';

class AppDate {
  static String monthDayYear(DateTime dateTime) {
    return "${months[dateTime.month - 1]} ${dateTime.day}, ${dateTime.year}";
  }

  static String customDateForm(DateTime dateTime) {
    return "${dateTime.year}-${twoNumber(dateTime.month)}-${twoNumber(dateTime.day)}";
  }

  static DateTime textToDate(String? dateInput) {
    if (dateInput == null || dateInput.trim().isEmpty) {
      // default fallback (e.g., now)
      return DateTime.now();
    }
    try {
      DateFormat dateFormat = DateFormat("yyyy-MM-dd");
      DateTime date = dateFormat.parseStrict(dateInput.trim());
      return date;
    } catch (e) {
      debugPrint("⚠️ Failed to parse date: '$dateInput' -> $e");
      // fallback to now or custom default
      return DateTime.now();
    }
  }

  static DateTime dateAndTime(DateTime date, TimeOfDay time) {
    return DateTime(date.year, date.month, date.day, time.hour, time.minute);
  }

  static DateTime dayDate() {
    return DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
    );
  }
}
