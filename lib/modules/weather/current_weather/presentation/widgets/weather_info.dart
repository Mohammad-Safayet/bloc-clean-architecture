import 'package:flutter/material.dart';

import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/widgets/weather_info_tile.dart';

class WeatherInfoWidget extends StatelessWidget with BaseWidgetMixin {
  WeatherInfoWidget({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: AppValues.margin_6,
      ),
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Theme.of(context).colorScheme.outline,
            Theme.of(context).colorScheme.surface,
          ],
          radius: 0.65,
          focal: Alignment.center,
        ),
      ),
      child: GridView.count(
        primary: false,
        shrinkWrap: true,
        crossAxisCount: AppValues.gridChildCount_3,
        crossAxisSpacing: AppValues.axisSpacing_2,
        childAspectRatio: 1.35,
        children: [
          WeatherInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "Humidity",
            value: "35",
            unit: "%",
          ),
          WeatherInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "UV Index",
            value: "35",
          ),
          WeatherInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "Wind",
            value: "6",
            unit: "kph",
          ),
        ],
      ),
    );
  }
}
