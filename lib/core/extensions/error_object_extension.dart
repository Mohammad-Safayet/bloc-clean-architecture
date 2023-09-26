import 'dart:io';

import 'package:weather_app/core/utils/error_handling/error_handling.dart';

extension ErrorObjectExtension on ErrorObject {
  static ErrorObject mapToErrorObject({
    required FailureEntity failure,
    required BaseException exception,
  }) {
    return failure.when(
      applicationFailure: () {
        return ErrorObject(
          title: "An Unexpected error occurred",
          message: exception.message,
        );
      },
      jsonFormatFailure: () {
        return ErrorObject(
          title: "JsonFormatException: Unexpected character(s)",
          message: exception.message,
        );
      },
      networkingFailure: () {
        return ErrorObject(
          title: "NetworkingException: Internet connection error",
          message: exception.message,
        );
      },
      notFoundFailure: () {
        String status = "";
        if (exception is ApiException) status = exception.status;

        return ErrorObject(
          title: "${HttpStatus.notFound}: $status",
          message: exception.message,
        );
      },
      serviceUnavailableFailure: () {
        String status = "";
        if (exception is ApiException) status = exception.status;

        return ErrorObject(
          title: "${HttpStatus.serviceUnavailable}: $status",
          message: exception.message,
        );
      },
      timeoutFailure: () {
        return ErrorObject(
          title: "${HttpStatus.networkConnectTimeoutError}",
          message: exception.message,
        );
      },
      unauthorizedFailure: () {
        String status = "";
        if (exception is ApiException) status = exception.status;

        return ErrorObject(
          title: "${HttpStatus.unauthorized}: $status",
          message: exception.message,
        );
      },
      apiFailure: () {
        String status = "";
        if (exception is ApiException) status = exception.status;

        return ErrorObject(
          title: "${(exception as ApiException).httpCode}: $status",
          message: exception.message,
        );
      },
    );
  }
}
