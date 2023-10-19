import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/config/config.dart';
import 'package:weather_app/modules/shared/base/base_state.dart';
import 'package:weather_app/modules/weather/current_weather/domain/usecases/get_current_weather_data_usecase.dart';
import 'package:weather_app/modules/weather/current_weather/infra/repositories/current_weather_repository.dart';

part 'current_weather_event.dart';

part 'current_weather_bloc.freezed.dart';

class CurrentWeatherBloc extends Bloc<CurrentWeatherEvent, BaseState> {
  CurrentWeatherBloc(super.initialState);

}
