import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather_app/core/services/location_manager.dart';
import 'package:weather_app/core/utils/di/di.dart';
import 'package:weather_app/core/utils/error_handling/failure_entity.dart';
import 'package:weather_app/modules/home/home.dart';
import 'package:weather_app/modules/home/presentation/bloc/location_bloc.dart';
import 'package:weather_app/modules/shared/views/error_screen.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/weather.dart';
import 'package:weather_app/modules/weather_details/presentation/views/weather_details_screen.dart';
import 'package:weather_app/modules/weather_details/weather_details.dart';

part 'app_routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

abstract class AppPages {
  static final routes = GoRouter(
    initialLocation: Routes.HOME,
    navigatorKey: _rootNavigatorKey,
    errorBuilder: (context, state) {
      FailureEntity failureEntity;
      if (state.extra is FailureEntity) {
        failureEntity = state.extra as FailureEntity;
      } else {
        failureEntity = ApplicationFailure(
          title: "Unknown Routes",
          message: state.error!.message,
        );
      }

      // final action = mapActionsFromFailure(failureEntity);

      return ErrorScreen(
        failureEntity: failureEntity,
        actions: const [],
      );
    },
    routes: [
      GoRoute(
        path: Routes.HOME,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => LocationBloc(
              DependencyInjection.instance.getInstance<LocationManager>(),
            ),
            child: HomePage(),
          );
        },
      ),
      GoRoute(
        path: Routes.WEATHER_DETAILS,
        builder: (context, state) {
          final data = state.extra as Weather;

          return WeatherDetailsPage(
            weather: data,
          );
        },
      ),
      GoRoute(
          path: Routes.ERROR,
          builder: (context, state) {
            FailureEntity failureEntity;
            if (state.extra is FailureEntity) {
              failureEntity = state.extra as FailureEntity;
            } else {
              failureEntity = ApplicationFailure(
                title: "Unknown Routes",
                message: state.error!.message,
              );
            }

            return ErrorScreen(
              failureEntity: failureEntity,
              actions: const [],
            );
          }),
    ],
  );
}
