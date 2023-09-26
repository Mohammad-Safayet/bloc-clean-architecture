import 'package:weather_app/modules/shared/base/base_remote_datasource.dart';
import 'package:weather_app/modules/weather/infra/models/astronomy_model.dart';
import 'package:weather_app/modules/weather/domain/entities/astronomy_query_param.dart';
import 'package:weather_app/core/extensions/models/astronomy_query_param_extension.dart';
import 'package:weather_app/modules/weather/infra/datasources/remote/weather_remote_datasource.dart';

class WeatherRemoteDataSourceImpl extends BaseRemoteDataSource
    implements WeatherRemoteDataSource {
  @override
  Future<AstronomyModel> getAstronomyData(
    AstronomyQueryParam queryParam,
  ) async {
    final endpoint = "${dioClient.options.baseUrl}/astronomy.json?";
    
    final api = dioClient.get(
      endpoint,
      queryParameters: queryParam.toQueryParam(),
    );

    try {
      final response = await callApiWithErrorParser(api);
      final data = response.data;

      return AstronomyModel.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future getCurrentWeatherData() async {
    // TODO: implement getAstronomyData
    throw UnimplementedError();
  }
}
