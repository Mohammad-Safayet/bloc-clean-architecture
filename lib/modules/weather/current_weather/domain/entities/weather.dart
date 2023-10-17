import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/current.dart';
import 'package:weather_app/modules/weather/main/domain/entities/weather_location.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required WeatherLocation location,
    required Current current,
  }) = _Weather;
}
