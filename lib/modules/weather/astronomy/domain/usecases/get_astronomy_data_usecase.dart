import 'package:dartz/dartz.dart';
import 'package:weather_app/core/utils/error_handling/error_handling.dart';
import 'package:weather_app/modules/shared/base/base_usecase.dart';
import 'package:weather_app/modules/weather/astronomy/domain/entities/astronomy.dart';
import 'package:weather_app/modules/weather/infra/repositories/weather_repo.dart';

class GetAstronomyDataUsecase extends BaseUsecase<Astronomy> {
  final WeatherRepository repository;

  GetAstronomyDataUsecase({
    required this.repository,
  });

  @override
  Future<Either<FailureEntity, Astronomy>> call() async {
    try {
      final result = await repository.getData(
        "Dhaka",
        {"dt": "2023-10-03"},
      );

      return Right(result);
    } catch (exception) {
      final entity = mapExceptionToFailureEntity(exception as Exception);

      return Left(entity);
    }
  }
}
