import 'package:weather_app/modules/shared/base/base_remote_datasource.dart';
import 'package:weather_app/core/extensions/models/astronomy_query_param_extension.dart';
import 'package:weather_app/modules/weather/astronomy/infra/models/astronomy_model.dart';
import 'package:weather_app/modules/weather/main/infra/datasources/weather_remote_datasource.dart';
import 'package:weather_app/modules/weather/astronomy/domain/entities/astronomy_query_param.dart';

class AstronomyRemoteDataSource extends BaseRemoteDataSource
    implements WeatherRemoteDataSource<AstronomyModel, AstronomyQueryParam> {
  @override
  Future<AstronomyModel> getData(
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
}
