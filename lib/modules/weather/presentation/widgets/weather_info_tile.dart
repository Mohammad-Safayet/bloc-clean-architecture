import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';

class WeatherInfoTileWidget extends StatelessWidget {
  const WeatherInfoTileWidget({
    Key? key,
    required this.bgColor,
    required this.title,
    required this.value,
    this.unit,
  }) : super(key: key);

  final Color bgColor;
  final String title;
  final String value;
  final String? unit;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
      ),
      height: AppValues.container_80,
      width: AppValues.container_100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyles.bodySmall,
            softWrap: true,
            maxLines: 2,
          ),
          SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisSize: MainAxisSize.min,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    value,
                    style: AppTextStyles.displaySmall,
                  ),
                ),
                if (unit != null)
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      unit!,
                      style: AppTextStyles.captions,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
