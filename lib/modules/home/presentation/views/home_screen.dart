import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';

import 'package:weather_app/core/routes/app_pages.dart';
import 'package:weather_app/core/utils/error_handling/failure_entity.dart';
import 'package:weather_app/modules/home/presentation/bloc/location_bloc.dart';
import 'package:weather_app/modules/shared/base/base_view.dart';
import 'package:weather_app/modules/shared/widgets/loading.dart';
import 'package:weather_app/modules/weather/weather.dart';

class HomeScreenView extends BaseView<LocationBloc, Position> {
  @override
  void error(
    BuildContext context,
    FailureEntity entity,
  ) {
    context.go(
      Routes.ERROR,
      extra: entity,
    );
  }

  @override
  Widget initial(
    BuildContext context,
    LocationBloc bloc,
  ) {
    bloc.add(const RequestCurrentLocation());

    return const LoadingWidget();
  }

  @override
  Widget success(
    BuildContext context,
    LocationBloc bloc,
    Position data,
  ) {
    return WeatherPage(
      position: data,
    );
  }
}
