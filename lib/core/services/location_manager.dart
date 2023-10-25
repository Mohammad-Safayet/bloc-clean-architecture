/// Author: Safayet Latif
/// Date: October 25, 2023
/// Description: This abstract class defines the interface for a location manager, which provides methods for obtaining location-related information and permissions.

import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';
import 'package:weather_app/core/config/build_config.dart';

abstract class LocationManager {
  final Logger logger = BuildConfig.instance.envConfig.logger;

  /// Requests and retrieves location permission.
  Future<bool> getPermission();

  /// Retrieves the current device location.
  Future<Position> getCurrentLocation();
}
