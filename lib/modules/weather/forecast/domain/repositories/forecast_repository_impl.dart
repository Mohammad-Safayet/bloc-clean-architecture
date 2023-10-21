import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/core/extensions/models/forecast/forecast_model_extension.dart';
import 'package:weather_app/modules/weather/forecast/domain/entities/forecast.dart';
import 'package:weather_app/modules/weather/forecast/domain/entities/forecast_query_param.dart';
import 'package:weather_app/modules/weather/forecast/infra/models/forecast_model.dart';
import 'package:weather_app/modules/weather/forecast/infra/repositories/forecast_repository.dart';
import 'package:weather_app/modules/weather/main/infra/datasources/weather_remote_datasource.dart';
import 'package:weather_app/modules/weather/main/infra/repositories/weather_repo.dart';

class ForecastRepositoryImpl extends WeatherRepository<Forecast>
    implements ForecastRepository {
  @override
  final WeatherRemoteDataSource remoteDataSource;

  ForecastRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Forecast convert(model) {
    final forecast = (model as ForecastModel).toEntity();

    return forecast;
  }

  @override
  Future<Forecast> getForecastData({
    required String query,
    required int days,
  }) {
    try {
      final apiKey = dotenv.env["API_KEY"]!;

      final param = ForecastQueryParam(
        key: apiKey,
        q: query,
        aqi: "no",
        days: days,
        alerts: "no",
      );

      return getData(param);
    } catch (e) {
      rethrow;
    }
  }
}
