import 'package:weather_app/modules/weather/infra/models/astronomy_model.dart';

abstract class WeatherRemoteDataSource {
  Future getCurrentWeatherData();

  Future<AstronomyModel> getAstronomyData();
}