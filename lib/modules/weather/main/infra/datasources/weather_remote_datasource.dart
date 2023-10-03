abstract class WeatherRemoteDataSource<T, Q> {
  Future<T> getData(
    Q queryParam,
  );
}
