import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:weather_app/core/routes/app_pages.dart';
import 'package:weather_app/core/utils/error_handling/failure_entity.dart';
import 'package:weather_app/modules/home/presentation/bloc/location_bloc.dart';
import 'package:weather_app/modules/shared/base/base_view.dart';
import 'package:weather_app/modules/shared/widgets/loading.dart';
import 'package:weather_app/modules/weather/presentation/views/weather_screen.dart';

class HomeScreenView extends BaseView<LocationBloc> {
  @override
  void error(BuildContext context, FailureEntity entity) {
    context.go(
      Routes.ERROR,
      extra: entity,
    );
  }

  @override
  Widget initial(LocationBloc bloc) {
    bloc.add(const RequestLocationPermission());

    return const LoadingWidget();
  }

  @override
  Widget success(LocationBloc bloc) {
    return const WeatherScreenView();
  }
}
