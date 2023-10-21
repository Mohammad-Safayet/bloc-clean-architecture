import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/modules/weather/forecast/domain/entities/day.dart';
import 'package:weather_app/modules/weather/forecast/domain/entities/hour.dart';

part 'forecast_day.freezed.dart';

@freezed
class ForecastDay with _$ForecastDay {
  const factory ForecastDay({
    required DateTime date,
    required Day day,
    required List<Hour> hour,
  }) = _ForecastDay;
}
