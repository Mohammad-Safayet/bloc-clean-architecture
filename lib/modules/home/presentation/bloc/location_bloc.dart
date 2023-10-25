/// Author: Safayet Latif
/// Date: October 25, 2023
/// Description: This Dart file defines a BLoC (Business Logic Component) for managing location-related events and state changes. It interacts with a LocationManager to retrieve the current location and handle location permissions.

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/config/build_config.dart';
import 'package:weather_app/core/services/location_manager.dart';
import 'package:weather_app/core/utils/error_handling/error_handling.dart';

import 'package:weather_app/modules/shared/base/base_state.dart';

part 'location_event.dart';

part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, BaseState> {
  final LocationManager _locationManager;

  final _logger = BuildConfig.instance.envConfig.logger;

  LocationBloc(this._locationManager) : super(const Initial()) {
    on<RequestCurrentLocation>(_getCurrentLocation);
  }

  Future _getCurrentLocation(event, emit) async {
    emit(const Loading());

    try {
      await _locationManager.getPermission();
      final result = await _locationManager.getCurrentLocation();

      _logger.d(result);
      emit(
        Success(
          data: result,
        ),
      );
    } catch (error) {
      final errorEntity = mapError(error as BaseException);

      emit(
        Error(
          error: errorEntity,
        ),
      );
    }
  }
}
