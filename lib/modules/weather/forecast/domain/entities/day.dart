import 'package:freezed_annotation/freezed_annotation.dart';

part 'day.freezed.dart';

@freezed
class Day with _$Day {
  const factory Day({
    required double maxTempC,
    required double maxTempF,
    required double minTempC,
    required double minTempF,
    required double avgTempC,
    required double avgTempF,
    required double maxWindMph,
    required double maxWindKph,
    required double totalPrecipMm,
    required double totalPrecipIn,
    required double totalSnowCm,
    required double avgVisKm,
    required double avgVisMiles,
    required double avgHumidity,
    required bool dailyWillItRain,
    required bool dailyChanceOfRain,
    required bool dailyWillItSnow,
    required bool dailyChanceOfSnow,
    required double uv,
  }) = _Day;
}
