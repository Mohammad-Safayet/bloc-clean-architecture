import 'package:weather_app/modules/weather/domain/entities/astronomy.dart';

abstract class WeatherRepository {
  Future<Astronomy> getAstronomyData();
}