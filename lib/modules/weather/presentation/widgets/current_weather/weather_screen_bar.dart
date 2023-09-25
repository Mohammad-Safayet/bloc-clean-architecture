import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/widgets/icon_text.dart';

class WeatherScreenBarWidget extends StatelessWidget {
  const WeatherScreenBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: AppValues.paddingSmall,
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconTextWidget(
            icon: FaIcon(
              FontAwesomeIcons.mapPin,
              size: AppValues.icon_12,
            ),
            text: Text(
              "Los Angeles",
              style: AppTextStyles.titleSmall,
            ),
          ),
          IconTextWidget(
            icon: FaIcon(
              FontAwesomeIcons.sun,
              size: AppValues.icon_12,
            ),
            text: Text(
              "Asia/Dhaka",
              style: AppTextStyles.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
