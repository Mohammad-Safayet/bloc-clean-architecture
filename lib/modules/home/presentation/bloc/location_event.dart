part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.started() = Started;

  const factory LocationEvent.getPermission() = RequestLocationPermission;

  const factory LocationEvent.getLocation() = RequestLocation;
}