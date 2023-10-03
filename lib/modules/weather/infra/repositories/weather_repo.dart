import 'package:weather_app/modules/weather/domain/entities/astronomy.dart';

abstract class WeatherRepository<T> {
  Future<T> getData();
}