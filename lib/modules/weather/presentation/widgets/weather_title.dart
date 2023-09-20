import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';

class WeatherTitleWidget extends StatelessWidget {
  const WeatherTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: AppValues.paddingSmall,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Saturday",
            style: AppTextStyles.titleBig,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 35.0,
            child: Center(
              child: Container(
                margin: const EdgeInsetsDirectional.symmetric(
                  horizontal: AppValues.padding_4,
                ),
                height: 2.0,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
          const Text(
            "10 Fab",
            style: AppTextStyles.titleBig,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
