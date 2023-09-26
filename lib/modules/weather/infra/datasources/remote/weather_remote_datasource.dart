import 'package:weather_app/modules/weather/domain/entities/astronomy_query_param.dart';
import 'package:weather_app/modules/weather/infra/models/astronomy_model.dart';

abstract class WeatherRemoteDataSource {
  Future getCurrentWeatherData();

  Future<AstronomyModel> getAstronomyData(
    AstronomyQueryParam queryParam,
  );
}
