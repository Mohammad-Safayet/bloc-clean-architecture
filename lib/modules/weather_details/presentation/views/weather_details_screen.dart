import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/shared/widgets/divider.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/weather.dart';
import 'package:weather_app/modules/weather_details/presentation/widgets/weather_details_header.dart';
import 'package:weather_app/modules/weather_details/presentation/widgets/weather_details_info.dart';
import 'package:weather_app/modules/weather_details/presentation/widgets/weather_details_temp.dart';

class WeatherDetailScreenView extends StatelessWidget with BaseWidgetMixin {
  final Weather weather;

  WeatherDetailScreenView({
    super.key,
    required this.weather,
  });

  @override
  Widget body(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(
        top: AppValues.margin_12,
      ),
      padding: const EdgeInsets.only(
        top: AppValues.padding,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(
            AppValues.radiusLarge,
          ),
          topRight: Radius.circular(
            AppValues.radiusLarge,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // location details
            WeatherDetailsHeaderWidget(
              city: weather.location.name,
              country: weather.location.tzId,
            ),
            DividerWidget(),

            // temperature
            WeatherDetailsTempWidget(
              temp: "${weather.current.tempC}${AppValues.celsius}",
            ),

            // weather details
            WeatherDetailsInfoWidget(
              weather: weather.current,
            ),
          ],
        ),
      ),
    );
  }
}
