import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:weather_app/core/config/config.dart';
import 'package:weather_app/modules/shared/base/base_state.dart';
import 'package:weather_app/modules/weather/astronomy/domain/repositories/astronomy_repo.dart';
import 'package:weather_app/modules/weather/astronomy/domain/usecases/get_today_astronomy_data_usecase.dart';
import 'package:weather_app/modules/weather/astronomy/domain/usecases/get_tomorrow_astronomy_data_usecase.dart';

part 'astronomy_event.dart';

part 'astronomy_bloc.freezed.dart';

class AstronomyBloc extends Bloc<AstronomyEvent, BaseState> {
  final _logger = BuildConfig.instance.envConfig.logger;

  final AstronomyRepository _repository;

  AstronomyBloc(this._repository) : super(const Initial()) {
    on<GetTodayAstronomyData>(_getTodayAstronomyData);
    on<GetTomorrowAstronomyData>(_getTomorrowAstronomyData);
  }

  Future _getTodayAstronomyData(event, emit) async {
    emit(const Loading());

    final usecase = GetTodayAstronomyDataUsecase(
      repository: _repository,
    );
    usecase.q = event.q;

    final result = await usecase.call();
    _logger.d(result);

    result.fold((entity) {
      emit(
        Error(
          error: entity,
        ),
      );
    }, (data) {
      emit(
        Success(data: data),
      );
    });
  }

  Future _getTomorrowAstronomyData(event, emit) async {
    emit(const Loading());

    final usecase = GetTomorrowAstronomyDataUsecase(
      repository: _repository,
    );
    usecase.q = event.q;

    final result = await usecase.call();
    _logger.d(result);

    result.fold((entity) {
      emit(
        Error(
          error: entity,
        ),
      );
    }, (data) {
      emit(
        Success(data: data),
      );
    });
  }
}
