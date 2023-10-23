import 'package:flutter/material.dart';
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
            title: "Humidity",
            value: "70",
            unit: "%",
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "UV Index",
            value: "70",
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "Wind",
            value: "70",
            unit: "kph",
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "UV Index",
            value: "70",
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "Wind",
            value: "70",
            unit: "kph",
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "UV Index",
            value: "70",
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "Wind",
            value: "70",
            unit: "kph",
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "UV Index",
            value: "70",
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "Wind",
            value: "70",
            unit: "kph",
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "UV Index",
            value: "70",
          ),
          WeatherDetailsInfoTileWidget(
            bgColor: Theme.of(context).colorScheme.surface,
            title: "Wind",
            value: "70",
            unit: "kph",
          ),
        ],
      ),
    );
  }

}