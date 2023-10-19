import 'package:flutter/material.dart';

import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

class WeatherDisplayWidget extends StatelessWidget with BaseWidgetMixin {
  WeatherDisplayWidget({
    Key? key,
    required this.temp,
    required this.imgLink,
    required this.condition,
  }) : super(key: key);

  final double temp;
  final String imgLink;
  final String condition;

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
          Text(
            "${temp.toString()}${AppValues.celsius}",
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
                "https:$imgLink",
                height: AppValues.iconLarge,
                width: AppValues.iconLarge,
              ),
              const SizedBox(
                width: AppValues.space_10,
              ),
              Text(
                condition,
                style: AppTextStyles.subTitle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
