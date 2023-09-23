import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:weather_app/modules/home/presentation/widgets/weather_app_bar.dart';
import 'package:weather_app/modules/shared/base/base_screen.dart';
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
    return WeatherScreenView();
  }
}
