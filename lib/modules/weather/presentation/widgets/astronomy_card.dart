import 'package:flutter/material.dart';

import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';

class AstronomyCardWidget extends StatelessWidget {
  const AstronomyCardWidget({
    Key? key,
    required this.imgLink,
    required this.time,
  }) : super(key: key);

  final String imgLink;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      elevation: AppValues.elevationLvl2,
      child: Container(
        height: AppValues.container_80,
        margin: const EdgeInsets.all(
          AppValues.margin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              imgLink,
              height: AppValues.icon_38,
              width: AppValues.icon_38,
            ),
            SizedBox(
              height: AppValues.space_10,
            ),
            Text(
              time,
              style: AppTextStyles.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
