import 'package:weather_app/modules/weather/astronomy/domain/entities/astronomy.dart';

abstract class WeatherRepository<T> {
  Future<T> getData(
    String q,
    Map<String, dynamic> other,
  );
}
