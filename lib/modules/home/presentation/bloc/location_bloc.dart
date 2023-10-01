import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/config/build_config.dart';
import 'package:weather_app/core/services/location_manager.dart';
import 'package:weather_app/core/services/location_manager_impl.dart';
import 'package:weather_app/core/utils/error_handling/error_handling.dart';

import 'package:weather_app/modules/shared/base/base_state.dart';

part 'location_event.dart';

part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, BaseState> {
  final LocationManager _locationManager;

  final _logger = BuildConfig.instance.envConfig.logger;

  LocationBloc(this._locationManager) : super(const Initial()) {
    on<RequestLocationPermission>(_getPermission);
    on<RequestLocation>(_getLocation);
  }

  Future _getPermission(event, emit) async {
    emit(const Loading());

    try {
      final result = await _locationManager.getPermission();

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

  Future _getLocation(event, emit) async {
    emit(const Loading());

    try {
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
