import 'package:dartz/dartz.dart';
import 'package:weather_app/core/utils/error_handling/error_handling.dart';
import 'package:weather_app/modules/shared/base/base_usecase.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/weather.dart';
import 'package:weather_app/modules/weather/current_weather/infra/repositories/current_weather_repository.dart';

class GetCurrentWeatherDataUsecase extends BaseUsecase<Weather> {
  final CurrentWeatherRepository repository;

  String _q = "";

  GetCurrentWeatherDataUsecase({
    required this.repository,
  });

  set q(String q) {
    _q = q;
  }

  @override
  Future<Either<FailureEntity, Weather>> call() async {
    try {
      final result = await repository.getCurrentWeatherData(_q);
      logger.d(result);

      return Right(result);
    } catch (exception) {
      logger.e(exception.toString());

      final FailureEntity entity;
      if (exception is Exception) {
        entity = mapExceptionToFailureEntity(exception);
      } else {
        entity = const ApplicationFailure(
          title: "Error Occurred",
          message: "An Unexpected error occurred.",
        );
      }

      return Left(entity);
    }
  }
}
