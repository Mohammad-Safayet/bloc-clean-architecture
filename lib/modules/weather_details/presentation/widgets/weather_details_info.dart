import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_strings.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/current.dart';
import 'package:weather_app/modules/weather_details/presentation/widgets/weather_details_info_tile.dart';

class WeatherDetailsInfoWidget extends StatelessWidget with BaseWidgetMixin {
  final Current weather;

  WeatherDetailsInfoWidget({
    super.key,
    required this.weather,
  });

  @override
  Widget? body(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: AppValues.marginLarge,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        border: Border(
          top: BorderSide(
            color: Theme.of(context).colorScheme.surfaceVariant,
            width: 2,
          ),
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.surfaceVariant,
            width: 2,
          ),
        ),
      ),
      child: GridView.count(
        primary: false,
        shrinkWrap: true,
        crossAxisCount: AppValues.gridChildCount_2,
        crossAxisSpacing: AppValues.axisSpacing_2,
        mainAxisSpacing: AppValues.axisSpacing_2,
        childAspectRatio: AppValues.gridChildAspectRatio_1_35,
        children: [
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.fahrenheit,
            value: weather.tempF.toString(),
            unit: AppValues.fahrenheit,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.uv,
            value: weather.uv.toString(),
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.feelsLike,
            value: weather.feelslikeC.toString(),
            unit: AppValues.celsius,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.feelsLike,
            value: weather.feelslikeF.toString(),
            unit: AppValues.fahrenheit,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.wind,
            value: weather.windMph.toString(),
            unit: AppValues.mph,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.wind,
            value: weather.windKph.toString(),
            unit: AppValues.kph,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.windDegree,
            value: weather.windDegree.toString(),
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.windDir,
            value: weather.windDir.toString(),
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.pressure,
            value: weather.pressureMb.toString(),
            unit: AppValues.mb,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.pressure,
            value: weather.pressureIn.toString(),
            unit: AppValues.inch,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.precipitation,
            value: weather.precipMm.toString(),
            unit: AppValues.mm,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.precipitation,
            value: weather.pressureIn.toString(),
            unit: AppValues.inch,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.humidity,
            value: weather.humidity.toString(),
            unit: AppValues.percentage,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.clouds,
            value: weather.cloud.toString(),
            unit: AppValues.percentage,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.gust,
            value: weather.gustMph.toString(),
            unit: AppValues.mph,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.gust,
            value: weather.gustKph.toString(),
            unit: AppValues.kph,
          ),
        ],
      ),
    );
  }
}
