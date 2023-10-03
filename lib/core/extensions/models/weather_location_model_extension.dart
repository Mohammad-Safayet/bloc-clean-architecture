import 'package:intl/intl.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/weather/main/domain/entities/weather_location.dart';
import 'package:weather_app/modules/weather/main/infra/models/weather_location_model.dart';

extension WeatherLocationModelExtension on WeatherLocationModel {
  WeatherLocation toEntity() {
    return WeatherLocation(
      name: name,
      region: region,
      country: country,
      latitude: latitude,
      longitude: longitude,
      tzId: tzId,
      localTime: DateFormat(AppValues.yyyyMMddHHmm).parseLoose(localTime),
    );
  }
}
