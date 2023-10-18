import 'package:weather_app/modules/weather/current_weather/domain/entities/weather.dart';

abstract class CurrentWeatherRepository {
  Future<Weather> getCurrentWeatherData(String query);
}
