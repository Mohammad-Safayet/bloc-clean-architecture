import 'package:weather_app/modules/weather/forecast/domain/entities/forecast.dart';

abstract class ForecastRepository {
  Future<Forecast> getForecastData({
    required String query,
    required int days,
  });
}
