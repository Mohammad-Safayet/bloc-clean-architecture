import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/weather/forecast/presentation/widgets/forecast_card.dart';

class ForecastView extends StatelessWidget {
  const ForecastView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = [
      "Saturday",
      "Sunday",
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
    ];

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppValues.padding,
        horizontal: AppValues.paddingLarge,
      ),
      height: AppValues.container_300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: AppValues.margin,
            ),
            child: const Text(
              "Forecasts for next 7 days",
              style: AppTextStyles.title,
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (context, index) {
                return ForecastCardWidget(
                  day: list[index],
                );
              },
            ),
          )
        ],
      ),
    );
    ;
  }
}
