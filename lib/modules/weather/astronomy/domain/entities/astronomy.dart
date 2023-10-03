import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/modules/weather/astronomy/domain/entities/astro.dart';
import 'package:weather_app/modules/weather/main/domain/entities/weather_location.dart';

part 'astronomy.freezed.dart';

@freezed
class Astronomy with _$Astronomy {
  const factory Astronomy({
    required WeatherLocation location,
    required Astro astro,
  }) = _Astronomy;
}
