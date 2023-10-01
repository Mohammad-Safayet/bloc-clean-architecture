import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';
import 'package:weather_app/core/config/build_config.dart';

abstract class LocationManager {
  final Logger logger = BuildConfig.instance.envConfig.logger;

  Future<bool> getPermission();

  Future<Position> getCurrentLocation();
}