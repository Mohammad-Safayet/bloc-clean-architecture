import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/weather/forecast/presentation/widgets/forecast_card_details.dart';
import 'package:weather_app/modules/weather/forecast/presentation/widgets/forecast_card_header.dart';

class ForecastCardWidget extends StatelessWidget with BaseWidgetMixin {
  ForecastCardWidget({
    Key? key,
    required this.date,
    required this.avgTemp,
  }) : super(key: key);

  final DateTime date;
  final double avgTemp;

  @override
  Widget body(BuildContext context) {
    return Container(
      width: AppValues.container_220,
      padding: const EdgeInsets.all(AppValues.paddingSmall),
      margin: const EdgeInsets.all(AppValues.marginSmall),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(AppValues.radius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ForecastCardHeaderWidget(
            headerText: "$avgTemp${AppValues.celsius}",
          ),
          ForecastCardDetailsWidget(
            conditionCaptions: "sunny",
            date: date,
          ),
        ],
      ),
    );
  }
}
