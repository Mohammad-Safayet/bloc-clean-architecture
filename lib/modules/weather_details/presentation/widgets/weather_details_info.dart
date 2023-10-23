import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_strings.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/weather_details/presentation/widgets/weather_details_info_tile.dart';

class WeatherDetailsInfoWidget extends StatelessWidget with BaseWidgetMixin {
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
            value: "70",
            unit: AppValues.fahrenheit,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "UV Index",
            value: "70",
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.feelsLike,
            value: "70",
            unit: AppValues.celsius,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.feelsLike,
            value: "70",
            unit: AppValues.fahrenheit,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.wind,
            value: "70",
            unit: AppValues.mph,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.wind,
            value: "70",
            unit: AppValues.kph,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.windDegree,
            value: "70",
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.windDir,
            value: "70",
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.pressure,
            value: "70",
            unit: AppValues.mb,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.pressure,
            value: "70",
            unit: AppValues.inch,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.precipitation,
            value: "70",
            unit: AppValues.mm,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.precipitation,
            value: "70",
            unit: AppValues.inch,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.humidity,
            value: "70",
            unit: AppValues.percentage,
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.clouds,
            value: "70",
            unit: AppValues.percentage,
          ),WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.gust,
            value: "70",
            unit: AppValues.mph,
          ), WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: WeatherFieldConstants.gust,
            value: "70",
            unit: AppValues.kph,
          ),
        ],
      ),
    );
  }

}