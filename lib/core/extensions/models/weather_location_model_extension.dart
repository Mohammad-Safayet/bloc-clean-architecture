/// Author: Safayet Latif
/// Date: October 25, 2023
/// Description: This Dart extension provides a method for converting a WeatherLocationModel to a WeatherLocation entity.

import 'package:intl/intl.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/weather/main/domain/entities/weather_location.dart';
import 'package:weather_app/modules/weather/main/infra/models/weather_location_model.dart';

/// A set of extension methods for converting a [WeatherLocationModel]
/// to a [WeatherLocation] entity.
extension WeatherLocationModelExtension on WeatherLocationModel {
  /// Converts a [WeatherLocationModel] to a [WeatherLocation] entity.
  ///
  /// This method creates a [WeatherLocation] entity based on the properties of the [WeatherLocationModel].
  /// It takes the name, region, country, latitude, longitude, tzId, and localTime properties from the model
  /// and constructs a [WeatherLocation] entity. It also parses the localTime string using the provided date format.
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
