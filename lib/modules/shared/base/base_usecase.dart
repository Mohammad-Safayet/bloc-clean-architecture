import 'package:dartz/dartz.dart';
import 'package:weather_app/core/config/build_config.dart';
import 'package:weather_app/core/extensions/failure_entity_extension.dart';
import 'package:weather_app/core/utils/error_handling/error_handling.dart';

abstract class BaseUsecase<T extends Object> {
  final _logger = BuildConfig.instance.envConfig.logger;

  Future<Either<FailureEntity, T>> call();

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
