import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/core/extensions/datetime_extension.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
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
          ForecastCardHeaderWidget(headerText: "$avgTemp${AppValues.celsius}"),
          Row(

            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "sunny",
                    style: AppTextStyles.bodySmallBold,
                  ),
                  Text(
                    (date.isSameDate(DateTime.now()))
                        ? "Today"
                        : DateFormat().add_EEEE().format(date),
                    style: AppTextStyles.titleLight,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
