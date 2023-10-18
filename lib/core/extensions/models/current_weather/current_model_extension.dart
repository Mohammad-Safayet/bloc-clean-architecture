import 'package:weather_app/core/extensions/models/current_weather/condition_model_extension.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/current.dart';
import 'package:weather_app/modules/weather/current_weather/infra/models/current_model.dart';

extension CurrentModelExtension on CurrentModel {
  Current toEntity() {
    return Current(
      lastUpdated: lastUpdated,
      tempC: tempC,
      tempF: tempF,
      isDay: isDay == 1,
      condition: condition.toEntity(),
      windMph: windMph,
      windKph: windKph,
      windDegree: windDegree,
      windDir: windDir,
      pressureMb: pressureMb,
      pressureIn: pressureIn,
      precipMm: precipMm,
      precipIn: precipIn,
      cloud: cloud,
      humidity: humidity,
      feelslikeC: feelslikeC,
      feelslikeF: feelslikeF,
      visKm: visKm,
      visMiles: visMiles,
      uv: uv,
      gustMph: gustMph,
      gustKph: gustKph,
    );
  }
}
