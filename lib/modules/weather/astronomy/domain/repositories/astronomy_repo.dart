import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:weather_app/core/config/config.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/core/extensions/datetime_extension.dart';
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
  Future<Astronomy> getData(
    dynamic query,
  ) async {
    try {
      final AstronomyModel astronomyModel =
          await remoteDataSource.getData(query);

      final astronomy = astronomyModel.toEntity();

      return astronomy;
    } catch (e) {
      rethrow;
    }
  }

  Future<Astronomy> getTodayData(String q) {
    try {
      final now = DateTime.now();
      final apiKey = dotenv.env["API_KEY"]!;

      final query = AstronomyQueryParam(
        key: apiKey,
        q: q,
        dt: now.toQString(),
      );

      return getData(query);
    } catch (e) {
      rethrow;
    }
  }

  Future<Astronomy> getTomorrowData(String q) {
    try {
      final tmr = DateTime.now().add(
        AppValues.duration1D,
      );
      final apiKey = dotenv.env["API_KEY"]!;

      final query = AstronomyQueryParam(
        key: apiKey,
        q: q,
        dt: tmr.toQString(),
      );

      return getData(query);
    } catch (e) {
      rethrow;
    }
  }
}
