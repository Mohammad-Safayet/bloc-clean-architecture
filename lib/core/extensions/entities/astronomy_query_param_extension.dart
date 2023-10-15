import 'package:weather_app/modules/weather/astronomy/domain/entities/astronomy_query_param.dart';

extension AstronomyQueryParamsExtension on AstronomyQueryParam {
  Map<String, String> toQueryParam() {
    return {
      "key": key,
      "q": q,
      "dt": dt,
    };
  }
}