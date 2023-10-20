import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

class ForecastCardWidget extends StatelessWidget with BaseWidgetMixin {
  ForecastCardWidget({
    Key? key,
    required this.day,
  }) : super(key: key);

  final String day;

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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              "78${AppValues.celsius}",
              style: AppTextStyles.displaySmall,
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
                  day,
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
