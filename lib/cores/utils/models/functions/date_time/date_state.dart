import 'dates.dart';

class DateState{
  static bool isToday(DateTime dayDate) {
    return dayDate.year == DateTime.now().year &&
        dayDate.month == DateTime.now().month &&
        dayDate.day == DateTime.now().day;
  }

  static bool isTomorrow(DateTime dayDate) {
    return dayDate.year == DateTime.now().year &&
        dayDate.month == DateTime.now().month &&
        dayDate.day == DateTime.now().day + 1;
  }

  static bool isYesterday(DateTime dayDate) {
    return dayDate.year == DateTime.now().year &&
        dayDate.month == DateTime.now().month &&
        dayDate.day == DateTime.now().day - 1;
  }

  static String dayState(DateTime dayDate) {
    if (isToday(dayDate)) {
      return "Today";
    } else if (isTomorrow(dayDate)) {
      return "Tomorrow";
    } else if (isYesterday(dayDate)) {
      return "yesterday";
    } else {
      return AppDate.customDateForm(dayDate);
    }
  }
}