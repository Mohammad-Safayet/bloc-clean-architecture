import 'package:weather_app/core/extensions/models/forecast/day_model_extension.dart';
import 'package:weather_app/core/extensions/models/forecast/hour_model_extension.dart';
import 'package:weather_app/modules/weather/forecast/domain/entities/forecast_day.dart';
import 'package:weather_app/modules/weather/forecast/infra/models/forecast_day_model.dart';

extension ForecastDayExtension on ForecastDayModel {
  ForecastDay toEntity() {
    return ForecastDay(
      date: date,
      day: day.toEntity(),
      hour: hour.map((item) => item.toEntity()).toList(),
    );
  }
}
