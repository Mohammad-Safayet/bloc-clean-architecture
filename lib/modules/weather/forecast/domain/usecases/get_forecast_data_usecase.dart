import 'package:dartz/dartz.dart';
import 'package:weather_app/core/utils/error_handling/failure_entity.dart';
import 'package:weather_app/modules/shared/base/base_usecase.dart';
import 'package:weather_app/modules/weather/forecast/domain/entities/forecast.dart';
import 'package:weather_app/modules/weather/forecast/infra/repositories/forecast_repository.dart';

class GetForecastDataUsecase extends BaseUsecase<Forecast> {
  String _q = "";
  int _days = 0;

  final ForecastRepository repository;

  GetForecastDataUsecase({
    required this.repository,
  });

  set q(String q) {
    _q = q;
  }

  set days(int days) {
    _days = days;
  }

  @override
  Future<Either<FailureEntity, Forecast>> call() async {
    try {
      final result = await repository.getForecastData(
        days: _days,
        query: _q,
      );
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
