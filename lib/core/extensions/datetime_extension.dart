extension DateTimeExtension on DateTime {
  String toQString() {
    return "$year-$month-$day";
  }
}