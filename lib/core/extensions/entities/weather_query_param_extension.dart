import 'package:weather_app/modules/weather/current_weather/domain/entities/weather_query_param.dart';

extension WeatherQueryParamsExtension on WeatherQueryParam {
  Map<String, String> toQueryParam() {
    return {
      "key": key,
      "q": q,
      "aqi": aqi,
    };
  }
}