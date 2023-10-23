import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

class WeatherDetailsTempWidget extends StatelessWidget with BaseWidgetMixin {
  final String temp;

  WeatherDetailsTempWidget({
    super.key,
    required this.temp,
  });

  @override
  Widget? body(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppValues.padding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            temp,
            style: AppTextStyles.displayBig,
            overflow: TextOverflow.ellipsis,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Clear sky",
                style: AppTextStyles.titleLarge,
              ),
              Text(
                "17${AppValues.celsius}-24${AppValues.celsius}",
                style: AppTextStyles.titleLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
