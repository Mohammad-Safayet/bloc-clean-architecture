import 'package:dartz/dartz.dart';

import 'package:weather_app/core/utils/error_handling/error_handling.dart';
import 'package:weather_app/modules/shared/base/base_usecase.dart';
import 'package:weather_app/modules/weather/astronomy/domain/entities/astronomy.dart';
import 'package:weather_app/modules/weather/astronomy/infra/repositories/astronomy_repo.dart';

class GetTodayAstronomyDataUsecase extends BaseUsecase<Astronomy> {
  final AstronomyRepository repository;

  String _q = "";

  GetTodayAstronomyDataUsecase({
    required this.repository,
  });

  set q(String q) {
    _q = q;
  }

  @override
  Future<Either<FailureEntity, Astronomy>> call() async {
    try {
      final result = await repository.getTodayData(_q);

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
