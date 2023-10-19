import 'package:flutter/material.dart';

import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/current.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/widgets/weather_info_tile.dart';

class WeatherInfoWidget extends StatelessWidget with BaseWidgetMixin {
  WeatherInfoWidget({
    Key? key,
    required this.current,
  }) : super(key: key);

  final Current current;

  @override
  Widget body(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: AppValues.margin_6,
      ),
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Theme.of(context).colorScheme.outline.withOpacity(0.8),
            Theme.of(context).colorScheme.surface,
          ],
          radius: 0.85,
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
            value: current.humidity.toString(),
            unit: "%",
          ),
          WeatherInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "UV Index",
            value: current.uv.toString(),
          ),
          WeatherInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "Wind",
            value: current.windKph.toString(),
            unit: "kph",
          ),
        ],
      ),
    );
  }
}
