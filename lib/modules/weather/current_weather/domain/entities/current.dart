import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/condition.dart';

part 'current.freezed.dart';

@freezed
class Current with _$Current {
  const factory Current({
    required DateTime lastUpdated,
    required double tempC,
    required double tempF,
    required bool isDay,
    required Condition condition,
    required double windMph,
    required double windKph,
    required int windDegree,
    required String windDir,
    required double pressureMb,
    required double pressureIn,
    required double precipMm,
    required double precipIn,
    required int cloud,
    required int humidity,
    required double feelslikeC,
    required double feelslikeF,
    required double visKm,
    required double visMiles,
    required double uv,
    required double gustMph,
    required double gustKph,
  }) = _Current;
}
