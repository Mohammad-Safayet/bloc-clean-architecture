/// Author: Mohammad Safayet Latif
/// Date: October 25, 2023
/// Description: This Dart extension provides methods for working with DateTime objects.
///
/// A set of extension methods for the [DateTime] class.
extension DateTimeExtension on DateTime {
  /// Converts a [DateTime] object to a formatted string in "YYYY-MM-DD" format.
  ///
  /// Returns a string representing the year, month, and day of the [DateTime].
  String toQString() {
    return "$year-$month-$day";
  }

  /// Checks if this [DateTime] is the same as another [DateTime] with some tolerance for minutes.
  ///
  /// Returns `true` if the day, month, year, and hour are the same, and the minutes are the same
  /// or differ by one.
  bool isSameTimeLoose(DateTime other) {
    return day == other.day &&
        month == other.month &&
        year == other.year &&
        hour == other.hour &&
        (minute == other.minute || minute + 1 == other.minute);
  }

  /// Checks if this [DateTime] has the same date as another [DateTime].
  ///
  /// Returns `true` if the day, month, and year are the same.
  bool isSameDate(DateTime other) {
    return day == other.day && month == other.month && year == other.year;
  }
}
