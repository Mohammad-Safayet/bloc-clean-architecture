import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/routes/app_pages.dart';
import 'package:weather_app/modules/home/presentation/bloc/location_bloc.dart';

import 'package:weather_app/modules/home/presentation/widgets/weather_app_bar.dart';
import 'package:weather_app/modules/shared/base/base_screen.dart';
import 'package:weather_app/modules/shared/base/base_state.dart';
import 'package:weather_app/modules/shared/widgets/loading.dart';
import 'package:weather_app/modules/weather/presentation/views/weather_screen.dart';

class HomeScreenView extends BaseScreen {
  HomeScreenView({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return const WeatherAppBarWidget(
      appTitle: "lak",
    );
  }

  @override
  Widget body(BuildContext context) {
    return BlocConsumer<LocationBloc, BaseState>(
      listener: (context, state) {
        if(state is Error) {
          context.go(Routes.ERROR, extra: state.error);
        }
      },
      builder: (context, state) {
        final locationBloc = context.read<LocationBloc>();

        if(state is Initial) {
          locationBloc.add(const RequestLocationPermission());

          return const LoadingWidget();
        } else if (state is Success) {
          return const  WeatherScreenView();
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
