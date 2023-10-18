import 'package:logger/logger.dart';
import 'package:weather_app/core/config/config.dart';
import 'package:weather_app/modules/weather/main/infra/datasources/weather_remote_datasource.dart';

abstract class WeatherRepository<T extends Object> {
  final Logger logger = BuildConfig.instance.envConfig.logger;

  WeatherRemoteDataSource get remoteDataSource;

  Future<T> getData(dynamic query) async {
    final model = await remoteDataSource.getData(query);

    final T entity = convert(model);
    logger.d(entity);

    return entity;
  }

  T convert(dynamic model);
}
