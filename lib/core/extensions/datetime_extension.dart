extension DateTimeExtension on DateTime {
  String toQString() {
    return "$year-$month-$day";
  }

  bool isSameTimeLoose(DateTime other) {
    return day == other.day &&
        month == other.month &&
        year == other.year &&
        hour == other.hour &&
        (minute == other.minute || minute + 1 == other.minute);
  }

  bool isSameDate(DateTime other) {
    return day == other.day && month == other.month && year == other.year;
  }
}
