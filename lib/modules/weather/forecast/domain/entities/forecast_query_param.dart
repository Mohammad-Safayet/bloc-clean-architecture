import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_query_param.freezed.dart';

@freezed
class ForecastQueryParam with _$ForecastQueryParam {
  const factory ForecastQueryParam({
    required String key,
    required String q,
    required int days,
    required String aqi,
    required String alerts,
  }) = _ForecastQueryParam;
}
