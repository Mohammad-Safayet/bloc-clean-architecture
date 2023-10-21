import 'package:weather_app/modules/weather/forecast/domain/entities/hour.dart';
import 'package:weather_app/modules/weather/forecast/infra/models/hour_model.dart';

extension HourModelExtension on HourModel {
  Hour toEntity() {
    return Hour(
      time: time,
      tempC: tempC,
      tempF: tempF,
      isDay: isDay == 0,
      windMph: windMph,
      windKph: windKph,
      windDegree: windDegree,
      windDir: windDir,
      pressureMb: pressureMb,
      pressureIn: pressureIn,
      precipMm: precipMm,
      precipIn: precipIn,
      humidity: humidity,
      cloud: cloud,
      feelslikeC: feelslikeC,
      feelslikeF: feelslikeF,
      windchillC: windchillC,
      windchillF: windchillF,
      heatIndexC: heatIndexC,
      heatIndexF: heatIndexF,
      dewPointC: dewPointC,
      dewPointF: dewPointF,
      willItRain: willItRain == 0,
      willItSnow: willItSnow == 0,
      chanceOfRain: chanceOfRain == 0,
      chanceOfSnow: chanceOfSnow == 0,
      visKm: visKm,
      visMiles: visMiles,
      gustMph: gustMph,
      gustKph: gustKph,
      uv: uv,
    );
  }
}
