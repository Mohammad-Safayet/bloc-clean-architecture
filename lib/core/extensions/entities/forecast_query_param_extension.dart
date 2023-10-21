import 'package:weather_app/modules/weather/forecast/domain/entities/forecast_query_param.dart';

extension ForecastQueryParamExtension on ForecastQueryParam {
  Map<String, String> toQueryParam() {
    return {
      "key": key,
      "q": q,
      "days": days.toString(),
      "aqi": aqi,
      "alerts": alerts,
    };
  }
}
