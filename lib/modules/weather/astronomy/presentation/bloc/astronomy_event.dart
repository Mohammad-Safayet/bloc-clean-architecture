part of 'astronomy_bloc.dart';

@freezed
class AstronomyEvent with _$AstronomyEvent {
  const factory AstronomyEvent.getAstronomyData({
    required String q,
    required String dt,
  }) = GetAstronomyData;
}
