import 'package:freezed_annotation/freezed_annotation.dart';

part 'hour.freezed.dart';

@freezed
class Hour with _$Hour {
  const factory Hour({
    required DateTime time,
    required double tempC,
    required double tempF,
    required bool isDay,
    // required Condition condition,
    required double windMph,
    required double windKph,
    required int windDegree,
    required String windDir,
    required double pressureMb,
    required double pressureIn,
    required double precipMm,
    required double precipIn,
    required int humidity,
    required int cloud,
    required double feelslikeC,
    required double feelslikeF,
    required double windchillC,
    required double windchillF,
    required double heatindexC,
    required double heatindexF,
    required double dewpointC,
    required double dewpointF,
    required bool willItRain,
    required bool willItSnow,
    required bool chanceOfRain,
    required bool chanceOfSnow,
    required double visKm,
    required double visMiles,
    required double gustMph,
    required double gustKph,
    required double uv,
  }) = _Hour;
}
