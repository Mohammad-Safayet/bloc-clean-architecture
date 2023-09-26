import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:weather_app/core/config/build_config.dart';
import 'package:weather_app/modules/weather/domain/entities/astronomy.dart';
import 'package:weather_app/modules/weather/domain/entities/astronomy_query_param.dart';
import 'package:weather_app/modules/weather/infra/repositories/weather_repo.dart';
import 'package:weather_app/core/extensions/models/astronomy_model_extension.dart';
import 'package:weather_app/modules/weather/infra/datasources/remote/weather_remote_datasource.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;
  final Logger _logger = BuildConfig.instance.envConfig.logger;

  WeatherRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Astronomy> getAstronomyData() async {
    try {
      final apiKey = dotenv.env["API_KEY"]!;

      final query = AstronomyQueryParam(
        key: apiKey,
        q: "Dhaka",
        dt: "2023-09-25",
      );
      final astronomyModel = await remoteDataSource.getAstronomyData(query);

      final astronomy = astronomyModel.toEntity();
      _logger.d(astronomy);

      return astronomy;
    } catch (e) {
      rethrow;
    }
  }
}
