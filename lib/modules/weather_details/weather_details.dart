import 'package:flutter/material.dart';
import 'package:weather_app/modules/shared/base/base_screen.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/weather.dart';
import 'package:weather_app/modules/weather_details/presentation/views/weather_details_screen.dart';
import 'package:weather_app/modules/weather_details/presentation/widgets/weather_details_appbar.dart';

class WeatherDetailsPage extends BaseScreen {
  final Weather weather;

  WeatherDetailsPage({
    super.key,
    required this.weather,
  });

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return const WeatherDetailsAppBarWidget(
      appTitle: "lak",
    );
  }

  @override
  Widget body(BuildContext context) {
    return WeatherDetailScreenView(
      weather: weather,
    );
  }
}
