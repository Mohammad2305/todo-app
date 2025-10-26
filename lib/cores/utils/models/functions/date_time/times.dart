import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../values/day_names_list.dart';
import '../../values/months_list.dart';
import '../number_form.dart';

class AppTime {
  static String customTimeForm(TimeOfDay time) {
    DateTime dateTime = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      time.hour,
      time.minute,
    );
    DateFormat formatter = DateFormat('hh:mm a');
    String formattedTime = formatter.format(dateTime);
    return formattedTime;
  }

  static TimeOfDay textToTime(String timeInput) {
    try {
      // Define the expected format
      final DateFormat formatter = DateFormat('hh:mm a'); // 'a' for AM/PM

      // Parse the string into a DateTime object
      final DateTime dateTime = formatter.parse(timeInput);

      // Create a TimeOfDay object from the DateTime
      return TimeOfDay.fromDateTime(dateTime);
    } catch (e) {
      debugPrint('Error parsing time string: $e');
      return TimeOfDay.now();
    }
  }
}
