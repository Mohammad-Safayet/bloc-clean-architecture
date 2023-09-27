import 'package:weather_app/core/utils/error_handling/error_handling.dart';

extension FailureEntityExtension on FailureEntity {
  static FailureEntity mapToFailureEntity({
    required BaseException exception,
  }) {
    if (exception is ApiException) {
      return ApiFailure(
        httpCode: exception.httpCode,
        status: exception.status,
        message: exception.message,
      );
    } else if (exception is JsonFormatException) {
      return JsonFormatFailure(
        message: exception.message,
      );
    } else if (exception is NetworkException) {
      return NetworkingFailure(
        message: exception.message,
      );
    } else if (exception is NotFoundException) {
      return NotFoundFailure(
        httpCode: exception.httpCode,
        status: exception.status,
        message: exception.message,
      );
    } else if (exception is ServiceUnavailableException) {
      return ServiceUnavailableFailure(
        httpCode: exception.httpCode,
        status: exception.status,
        message: exception.message,
      );
    } else if (exception is TimeoutException) {
      return TimeoutFailure(
        message: exception.message,
      );
    } else if (exception is UnauthorizedException) {
      return UnauthorizedFailure(
        httpCode: exception.httpCode,
        status: exception.status,
        message: exception.message,
      );
    } else {
      return ApplicationFailure(
        message: exception.message,
      );
    }
  }
}
