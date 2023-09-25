import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_location.freezed.dart';

@freezed
class WeatherLocation with _$WeatherLocation {
  const factory WeatherLocation({
    required String name,
    required String region,
    required String country,
    required double latitude,
    required double longitude,
    required String tzId,
    required DateTime localTime,
  }) = _WeatherLocation;
}
