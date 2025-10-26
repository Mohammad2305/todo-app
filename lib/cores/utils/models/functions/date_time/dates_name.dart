import 'package:todo/cores/utils/models/values/months_list.dart';

import '../../values/day_names_list.dart';

class DateNames{
  static String dayName(DateTime dateTime) {
    return dayNames[dateTime.weekday - 1];
  }

  static String monthName(DateTime dateTime) {
    return months[dateTime.month - 1];
  }
}