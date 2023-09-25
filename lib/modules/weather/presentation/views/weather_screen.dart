import 'package:flutter/material.dart';

import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/weather/infra/datasources/remote/weather_remote_datasource_impl.dart';
import 'package:weather_app/modules/weather/presentation/views/astronomy_view.dart';
import 'package:weather_app/modules/weather/presentation/views/current_weather.dart';

class WeatherScreenView extends StatefulWidget {
  const WeatherScreenView({Key? key}) : super(key: key);

  @override
  State<WeatherScreenView> createState() => _WeatherScreenViewState();
}

class _WeatherScreenViewState extends State<WeatherScreenView> {
  @override
  void initState() {
    super.initState();

    WeatherRemoteDataSourceImpl().getAstronomyData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(
        top: AppValues.margin_12,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppValues.paddingLarge,
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
          children: [
            // Current Weather info
            CurrentWeatherView(),

            // Astronomy information
            AstronomyView(),
          ],
        ),
      ),
    );
  }
}
