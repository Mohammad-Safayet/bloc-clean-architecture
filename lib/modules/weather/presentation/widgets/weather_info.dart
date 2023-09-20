import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/weather/presentation/widgets/weather_info_tile.dart';

class WeatherInfoWidget extends StatelessWidget {
  const WeatherInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: AppValues.padding,
      ),
      height: AppValues.container_100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WeatherInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "Wind Speed",
            value: "15.6",
            unit: "kph",
          ),
          VerticalDivider(
            width: 2,
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          WeatherInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "UV",
            value: "15",
          ),
          VerticalDivider(
            width: 2,
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          WeatherInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "Humidity",
            value: "35",
            unit: "%",
          ),
        ],
      ),
    );
  }
}
