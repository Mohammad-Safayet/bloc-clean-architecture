import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/core/extensions/datetime_extension.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

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
      height: AppValues.container_220,
      width: AppValues.container_180,
      padding: const EdgeInsets.all(AppValues.paddingSmall),
      margin: const EdgeInsets.all(AppValues.marginSmall),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(AppValues.radius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                "$avgTemp${AppValues.celsius}",
                style: AppTextStyles.displaySmall,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "sunny",
                  style: AppTextStyles.bodySmallBold,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  DateFormat().add_EEEE().format(date),
                  style: AppTextStyles.titleLight,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
