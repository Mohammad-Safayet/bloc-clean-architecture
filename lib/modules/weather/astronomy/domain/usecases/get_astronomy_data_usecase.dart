import 'package:dartz/dartz.dart';
import 'package:weather_app/core/utils/error_handling/error_handling.dart';
import 'package:weather_app/modules/shared/base/base_usecase.dart';
import 'package:weather_app/modules/weather/astronomy/domain/entities/astronomy.dart';
import 'package:weather_app/modules/weather/astronomy/domain/entities/astronomy_query_param.dart';
import 'package:weather_app/modules/weather/main/infra/repositories/weather_repo.dart';

class GetAstronomyDataUsecase extends BaseUsecase<Astronomy> {
  final WeatherRepository repository;

  String _q = "";
  String _dt = "";

  GetAstronomyDataUsecase({
    required this.repository,
  });

  set q(String q) {
    _q = q;
  }

  set dt(String dt) {
    _dt = dt;
  }

  @override
  Future<Either<FailureEntity, Astronomy>> call() async {
    try {
      final result = await repository.getData(
        _q,
        {"dt": _dt},
      );

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
