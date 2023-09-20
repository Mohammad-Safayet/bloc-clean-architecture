import 'package:flutter/material.dart';

import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';

class WeatherDisplayWidget extends StatelessWidget {
  const WeatherDisplayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: AppValues.padding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
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
              Text(
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
