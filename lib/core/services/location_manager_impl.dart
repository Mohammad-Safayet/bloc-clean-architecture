import 'package:geolocator/geolocator.dart';
import 'package:weather_app/core/services/location_manager.dart';
import 'package:weather_app/core/utils/error_handling/error_handling.dart';

class LocationManagerImpl extends LocationManager {
  @override
  Future<Position> getCurrentLocation() async {
    try {
      final location = await Geolocator.getCurrentPosition();

      logger.d(location);

      return location;
    } catch (error) {
      logger.e("Generic error: >>>>>>> $error");

      if (error is BaseException) {
        rethrow;
      }

      throw handleError("$error");
    }
  }

  @override
  Future<bool> getPermission() async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          throw LocationPermissionDeniedException(
            message:
                "Location access permission needed. Please enable the permission from the settings. Or the core functionality will not able operate. Thank you.",
          );
        }
      }

      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever, handle appropriately.
        throw LocationPermissionDeniedForeverException(
          message:
              "The core functionality will not be available if the location access is denied.",
        );
      }

      return true;
    } catch (error) {
      logger.e("Generic error: >>>>>>> $error");

      if (error is BaseException) {
        rethrow;
      }

      throw handleError("$error");
    }
  }
}
