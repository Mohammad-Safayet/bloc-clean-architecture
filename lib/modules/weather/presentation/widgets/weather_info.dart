import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/weather/presentation/widgets/weather_info_tile.dart';

class WeatherInfoWidget extends StatelessWidget {
  const WeatherInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      shrinkWrap: true,
      crossAxisCount: AppValues.gridChildCount_3,
      crossAxisSpacing: AppValues.axisSpacing_5,
      padding: const EdgeInsets.only(
        bottom: AppValues.padding_6,
      ),
      children: [
        WeatherInfoTileWidget(
          bgColor: Theme.of(context).colorScheme.surfaceVariant,
          title: "Humidity",
          value: "35",
          unit: "%",
        ),
        WeatherInfoTileWidget(
          bgColor: Theme.of(context).colorScheme.surfaceVariant,
          title: "UV Index",
          value: "35",
        ),
        WeatherInfoTileWidget(
          bgColor: Theme.of(context).colorScheme.surfaceVariant,
          title: "Wind",
          value: "6",
          unit: "kph",
        ),
      ],
    );
  }
}
