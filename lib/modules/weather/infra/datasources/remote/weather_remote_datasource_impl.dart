import 'package:weather_app/modules/shared/base/base_remote_datasource.dart';
import 'package:weather_app/modules/weather/infra/datasources/remote/weather_remote_datasource.dart';
import 'package:weather_app/modules/weather/infra/models/astronomy_model.dart';

class WeatherRemoteDataSourceImpl extends BaseRemoteDataSource
    implements WeatherRemoteDataSource {
  @override
  Future<AstronomyModel> getAstronomyData() async {
    final endpoint =
        "${dioClient.options.baseUrl}/astronomy.json?key=f5175a14c4dd4efbb5b04128231709&q=22.3752,91.8349&dt=2023-09-21";
    final api = dioClient.get(endpoint);

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
