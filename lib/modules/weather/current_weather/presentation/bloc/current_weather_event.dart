part of 'current_weather_bloc.dart';

@freezed
class CurrentWeatherEvent with _$CurrentWeatherEvent {
  const factory CurrentWeatherEvent.getCurrentWeatherData({
    required String q,
  }) = GetCurrentWeatherData;
}
