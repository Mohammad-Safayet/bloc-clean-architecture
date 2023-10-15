import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

import 'package:weather_app/modules/shared/base/base_screen.dart';
import 'package:weather_app/modules/weather/astronomy/presentation/bloc/astronomy_bloc.dart';
import 'package:weather_app/modules/weather/main/presentation/bloc/connectivity_bloc.dart';
import 'package:weather_app/modules/weather/main/presentation/views/weather_screen.dart';

class WeatherPage extends BaseScreen {
  final Position position;

  WeatherPage({
    super.key,
    required this.position,
  });

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ConnectivityBloc(),
        ),
      ],
      child: WeatherScreenView(
        position: position,
      ),
    );
  }
}
