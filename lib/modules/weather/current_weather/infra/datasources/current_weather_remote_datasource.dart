import 'package:weather_app/core/extensions/entities/weather_query_param_extension.dart';
import 'package:weather_app/modules/shared/base/base_remote_datasource.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/weather_query_param.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/weather_query_param.dart';
import 'package:weather_app/modules/weather/current_weather/infra/models/weather_model.dart';
import 'package:weather_app/modules/weather/main/infra/datasources/weather_remote_datasource.dart';

class CurrentWeatherRemoteDataSource extends BaseRemoteDataSource
    implements WeatherRemoteDataSource<WeatherModel, WeatherQueryParam> {
  @override
  Future<WeatherModel> getData(
    WeatherQueryParam queryParam,
  ) async {
    final endpoint = "${dioClient.options.baseUrl}/current.json?";

    final api = dioClient.get(
      endpoint,
      queryParameters: queryParam.toQueryParam(),
    );

    try {
      final response = await callApiWithErrorParser(api);
      final data = response.data;

      logger.d(WeatherModel.fromJson(data));

      return WeatherModel.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }
}
