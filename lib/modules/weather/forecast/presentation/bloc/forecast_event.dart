part of 'forecast_bloc.dart';

@freezed
class ForecastEvent with _$ForecastEvent {
  const factory ForecastEvent.getForecastData({
    required String query,
    required int days,
  }) = GetForecastData;
}
