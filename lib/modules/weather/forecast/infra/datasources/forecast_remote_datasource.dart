import 'package:weather_app/core/extensions/entities/forecast_query_param_extension.dart';
import 'package:weather_app/modules/shared/base/base_remote_datasource.dart';
import 'package:weather_app/modules/weather/forecast/domain/entities/forecast_query_param.dart';
import 'package:weather_app/modules/weather/forecast/infra/models/forecast_model.dart';
import 'package:weather_app/modules/weather/main/infra/datasources/weather_remote_datasource.dart';

class ForecastRemoteDatasource extends BaseRemoteDataSource
    implements WeatherRemoteDataSource<ForecastModel, ForecastQueryParam> {
  @override
  Future<ForecastModel> getData(
    ForecastQueryParam queryParam,
  ) async {
    final endpoint = "${dioClient.options.baseUrl}/forecast.json?";

    final api = dioClient.get(
      endpoint,
      queryParameters: queryParam.toQueryParam(),
    );

    try {
      final response = await callApiWithErrorParser(api);
      final data = response.data;

      return ForecastModel.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }
}
