import 'package:geolocator/geolocator.dart';

extension PositionExtension on Position {
  String toQString() {
    return "$latitude,$longitude";
  }
}