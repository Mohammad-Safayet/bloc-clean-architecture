import 'package:weather_app/modules/weather/forecast/domain/entities/day.dart';
import 'package:weather_app/modules/weather/forecast/infra/models/day_model.dart';

extension DayModelExtension on DayModel {
  Day toEntity() {
    return Day(
      maxTempC: maxTempC,
      maxTempF: maxTempF,
      minTempC: minTempC,
      minTempF: minTempF,
      avgTempC: avgTempC,
      avgTempF: avgTempF,
      maxWindMph: maxWindMph,
      maxWindKph: maxWindKph,
      totalPrecipMm: totalPrecipMm,
      totalPrecipIn: totalPrecipIn,
      totalSnowCm: totalSnowCm,
      avgVisKm: avgVisKm,
      avgVisMiles: avgVisMiles,
      avgHumidity: avgHumidity,
      dailyWillItRain: dailyWillItRain == 0,
      dailyChanceOfRain: dailyChanceOfRain == 0,
      dailyWillItSnow: dailyWillItSnow == 0,
      dailyChanceOfSnow: dailyChanceOfSnow == 0,
      uv: uv,
    );
  }
}
