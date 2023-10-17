import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_query_param.freezed.dart';

@freezed
class WeatherQueryParam with _$WeatherQueryParam {
  const factory WeatherQueryParam({
    required String key,
    required String q,
    required String aqi,
  }) = _WeatherQueryParam;
}
