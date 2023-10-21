import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';

import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/core/routes/app_pages.dart';
import 'package:weather_app/core/utils/error_handling/failure_entity.dart';
import 'package:weather_app/modules/shared/base/base_view.dart';
import 'package:weather_app/modules/shared/widgets/loading.dart';
import 'package:weather_app/modules/weather/astronomy/presentation/views/astronomy_view.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/views/current_weather.dart';
import 'package:weather_app/modules/weather/forecast/presentation/views/forecast.dart';
import 'package:weather_app/modules/weather/main/presentation/bloc/connectivity_bloc.dart';

class WeatherScreenView extends BaseView<ConnectivityBloc, bool> {
  WeatherScreenView({
    required this.position,
  });

  final Position position;

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
    ConnectivityBloc bloc,
  ) {
    bloc.add(const CheckConnectivity());

    return const LoadingWidget();
  }

  @override
  Widget success(
    BuildContext context,
    ConnectivityBloc bloc,
    bool data,
  ) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(
        top: AppValues.margin_12,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(
            AppValues.radiusXLarge,
          ),
          topRight: Radius.circular(
            AppValues.radiusXLarge,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Current Weather info
            CurrentWeatherView(
              position: position,
            ),
            Divider(
              color: Theme.of(context).colorScheme.surfaceVariant,
              thickness: AppValues.dividerThickness_2,
              endIndent: AppValues.dividerIndent_5,
              indent: AppValues.dividerIndent_5,
            ),

            // Astronomy information
            AstronomyView(
              position: position,
            ),
            Divider(
              color:
                  Theme.of(context).colorScheme.inverseSurface.withOpacity(0.2),
              thickness: AppValues.dividerThickness_2,
              endIndent: AppValues.dividerIndent_5,
              indent: AppValues.dividerIndent_5,
            ),

            // Forecasts
            ForecastView(
              position: position,
            ),
          ],
        ),
      ),
    );
  }
}
