/// Author: Safayet Latif
/// Date: October 25, 2023
/// Description: This abstract class, `BaseUsecase`, defines the base structure for use cases in the Weather App. Use cases are responsible for executing specific tasks or operations and returning results or errors.

import 'package:dartz/dartz.dart';
import 'package:weather_app/core/config/build_config.dart';
import 'package:weather_app/core/extensions/failure_entity_extension.dart';
import 'package:weather_app/core/utils/error_handling/error_handling.dart';

/// An abstract class representing a use case for the Weather App.
abstract class BaseUsecase<T extends Object> {
  final logger = BuildConfig.instance.envConfig.logger;

  /// Executes the use case and returns a result or failure.
  Future<Either<FailureEntity, T>> call();

  /// Maps an exception to a `FailureEntity`.
  ///
  /// This method converts exceptions to a `FailureEntity` for consistent error handling.
  ///
  /// - [exception]: The exception to be mapped.
  ///
  /// Returns a `FailureEntity` representing the exception.
  FailureEntity mapExceptionToFailureEntity(Exception exception) {
    if (exception is BaseException) {
      return mapError(exception);
    } else {
      return FailureEntityExtension.mapToFailureEntity(
        exception: handleError("Unexpected error occurred") as BaseException,
      );
    }
  }
}
