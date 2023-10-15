import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/weather/astronomy/presentation/views/astronomy_view.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/views/current_weather.dart';

class WeatherScreenView extends StatelessWidget {
  const WeatherScreenView({
    Key? key,
    required this.position,
  }) : super(key: key);

  final Position position;

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
