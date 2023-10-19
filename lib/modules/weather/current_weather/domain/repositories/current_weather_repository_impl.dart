import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:weather_app/core/extensions/models/current_weather/weather_model_extension.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/weather.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/weather_query_param.dart';
import 'package:weather_app/modules/weather/current_weather/infra/models/weather_model.dart';
import 'package:weather_app/modules/weather/current_weather/infra/repositories/current_weather_repository.dart';
import 'package:weather_app/modules/weather/main/infra/datasources/weather_remote_datasource.dart';
import 'package:weather_app/modules/weather/main/infra/repositories/weather_repo.dart';

class CurrentWeatherRepositoryImpl extends WeatherRepository<Weather>
    implements CurrentWeatherRepository {
  @override
  final WeatherRemoteDataSource remoteDataSource;

  CurrentWeatherRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Weather convert(model) {
    final entity = (model as WeatherModel).toEntity();

    return entity;
  }

  @override
  Future<Weather> getCurrentWeatherData(String query) {
    try {
      final apiKey = dotenv.env["API_KEY"]!;

      final param = WeatherQueryParam(
        key: apiKey,
        q: query,
        aqi: "no",
      );

      return getData(param);
    } catch (e) {
      rethrow;
    }
  }
}
