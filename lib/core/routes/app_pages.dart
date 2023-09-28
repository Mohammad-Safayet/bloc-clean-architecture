import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/utils/error_handling/failure_entity.dart';
import 'package:weather_app/modules/home/home.dart';
import 'package:weather_app/modules/shared/views/error_screen.dart';

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

      return ErrorScreen(
        failureEntity: failureEntity,
      );
    },
    routes: [
      GoRoute(
        path: Routes.HOME,
        builder: (context, state) => const HomePage(),
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
            );
          }),
    ],
  );
}
