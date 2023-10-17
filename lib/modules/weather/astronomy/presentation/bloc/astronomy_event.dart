part of 'astronomy_bloc.dart';

@freezed
class AstronomyEvent with _$AstronomyEvent {
  const factory AstronomyEvent.getTodayAstronomyData({
    required String q,
  }) = GetTodayAstronomyData;

  const factory AstronomyEvent.getTomorrowAstronomyData({
    required String q,
  }) = GetTomorrowAstronomyData;
}
