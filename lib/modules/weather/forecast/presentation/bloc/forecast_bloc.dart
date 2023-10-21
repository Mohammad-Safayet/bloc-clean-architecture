import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/modules/shared/base/base_state.dart';

part 'forecast_event.dart';
part 'forecast_bloc.freezed.dart';

class ForecastBloc extends Bloc<ForecastEvent, BaseState> {
  ForecastBloc() : super(Initial()) {
    on<ForecastEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
