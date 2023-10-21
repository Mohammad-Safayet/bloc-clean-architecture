import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/config/config.dart';
import 'package:weather_app/modules/shared/base/base_state.dart';
import 'package:weather_app/modules/weather/forecast/domain/usecases/get_forecast_data_usecase.dart';
import 'package:weather_app/modules/weather/forecast/infra/repositories/forecast_repository.dart';

part 'forecast_event.dart';

part 'forecast_bloc.freezed.dart';

class ForecastBloc extends Bloc<ForecastEvent, BaseState> {
  final _logger = BuildConfig.instance.envConfig.logger;

  final ForecastRepository repository;

  ForecastBloc(this.repository) : super(const Initial()) {
    on<GetForecastData>(_getForecastData);
  }

  Future _getForecastData(event, emit) async {
    emit(const Loading());

    final getForecastDataUsecase = GetForecastDataUsecase(
      repository: repository,
    );
    getForecastDataUsecase.q = event.query;
    getForecastDataUsecase.days = event.days;

    final result = await getForecastDataUsecase.call();

    result.fold(
      (left) => emit(
        Error(
          error: left,
        ),
      ),
      (right) => emit(
        Success(
          data: right,
        ),
      ),
    );
  }
}
