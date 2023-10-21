import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/modules/weather/forecast/domain/entities/forecast_day.dart';
import 'package:weather_app/modules/weather/main/domain/entities/weather_location.dart';

part 'forecast.freezed.dart';

@freezed
class Forecast with _$Forecast {
  const factory Forecast({
    required WeatherLocation location,
    required List<ForecastDay> forecastDays,
  }) = _Forecast;
}
