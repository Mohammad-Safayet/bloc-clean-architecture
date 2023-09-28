import 'package:weather_app/core/utils/error_handling/error_handling.dart';

extension FailureEntityExtension on FailureEntity {
  static FailureEntity mapToFailureEntity({
    required BaseException exception,
  }) {
    if (exception is ApiException) {
      return ApiFailure(
        title: "Code ${exception.httpCode}: ${exception.status}",
        message: exception.message,
      );
    } else if (exception is LocationPermissionDeniedException) {
      return LocationPermissionFailure(
        title: "Location Access Permission is denied!",
        message: exception.message,
      );
    } else if (exception is JsonFormatException) {
      return JsonFormatFailure(
        title: "Bad Response",
        message: exception.message,
      );
    } else if (exception is NetworkException) {
      return NetworkingFailure(
        title: "Network Error",
        message: exception.message,
      );
    } else if (exception is NotFoundException) {
      return NotFoundFailure(
        title: "Code ${exception.httpCode}: ${exception.status}",
        message: exception.message,
      );
    } else if (exception is ServiceUnavailableException) {
      return ServiceUnavailableFailure(
        title: "Code ${exception.httpCode}: ${exception.status}",
        message: exception.message,
      );
    } else if (exception is TimeoutException) {
      return TimeoutFailure(
        title: "Connection Timeout Error",
        message: exception.message,
      );
    } else if (exception is UnauthorizedException) {
      return UnauthorizedFailure(
        title: "Code ${exception.httpCode}: ${exception.status}",
        message: exception.message,
      );
    } else {
      return ApplicationFailure(
        title: "Error Occurred",
        message: exception.message,
      );
    }
  }
}
