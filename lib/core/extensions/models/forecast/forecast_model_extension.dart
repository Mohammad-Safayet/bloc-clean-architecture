import 'package:weather_app/core/extensions/models/forecast/forecast_day_model_extension.dart';
import 'package:weather_app/core/extensions/models/weather_location_model_extension.dart';
import 'package:weather_app/modules/weather/forecast/domain/entities/forecast.dart';
import 'package:weather_app/modules/weather/forecast/infra/models/forecast_model.dart';

extension ForecastModelExtension on ForecastModel {
  Forecast toEntity() {
    return Forecast(
      location: location.toEntity(),
      forecastDays: forecast["forecastday"]!
          .map(
            (item) => item.toEntity(),
          )
          .toList(),
    );
  }
}
