import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:weather_app/core/config/config.dart';
import 'package:weather_app/core/extensions/models/astronomy_model_extension.dart';
import 'package:weather_app/modules/weather/astronomy/domain/entities/astronomy.dart';
import 'package:weather_app/modules/weather/astronomy/domain/entities/astronomy_query_param.dart';
import 'package:weather_app/modules/weather/astronomy/infra/models/astronomy_model.dart';
import 'package:weather_app/modules/weather/main/infra/datasources/weather_remote_datasource.dart';
import 'package:weather_app/modules/weather/main/infra/repositories/weather_repo.dart';

class AstronomyRepository extends WeatherRepository<Astronomy> {
  final WeatherRemoteDataSource remoteDataSource;
  final Logger _logger = BuildConfig.instance.envConfig.logger;

  AstronomyRepository({required this.remoteDataSource});

  @override
  Future<Astronomy> getData(String q, Map<String, dynamic> other) async {
    try {
      final apiKey = dotenv.env["API_KEY"]!;

      final query = AstronomyQueryParam(
        key: apiKey,
        q: q,
        dt: other["dt"],
      );

      final AstronomyModel astronomyModel =
          await remoteDataSource.getData(query);

      final astronomy = astronomyModel.toEntity();

      return astronomy;
    } catch (e) {
      rethrow;
    }
  }
}
