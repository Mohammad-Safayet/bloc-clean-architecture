import 'package:flutter/material.dart';

import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

class WeatherDisplayWidget extends StatelessWidget with BaseWidgetMixin {
  WeatherDisplayWidget({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: AppValues.padding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "17.4\u00B0",
            style: AppTextStyles.displayBig,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: AppValues.space_10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                "https://cdn.weatherapi.com/weather/64x64/day/176.png",
                height: AppValues.iconLarge,
                width: AppValues.iconLarge,
              ),
              const SizedBox(
                width: AppValues.space_10,
              ),
              const Text(
                "Patchy rain possible",
                style: AppTextStyles.subTitle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
