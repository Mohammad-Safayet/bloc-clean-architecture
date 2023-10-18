import 'package:weather_app/core/extensions/models/current_weather/current_model_extension.dart';
import 'package:weather_app/core/extensions/models/weather_location_model_extension.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/weather.dart';
import 'package:weather_app/modules/weather/current_weather/infra/models/weather_model.dart';

extension WeatherModelExtension on WeatherModel {
  Weather toEntity() {
    return Weather(
      location: location.toEntity(),
      current: current.toEntity(),
    );
  }
}
