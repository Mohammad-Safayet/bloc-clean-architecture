import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/weather/astronomy/presentation/widgets/astronomy_card.dart';

class AstronomyInfoView extends StatelessWidget {
  const AstronomyInfoView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            title,
            style: AppTextStyles.title,
          ),
        ),
        const SizedBox(
          height: AppValues.space_8,
        ),
        GridView.count(
          primary: false,
          shrinkWrap: true,
          crossAxisCount: AppValues.gridChildCount_2,
          crossAxisSpacing: AppValues.axisSpacing_25,
          mainAxisSpacing: AppValues.axisSpacing_15,
          childAspectRatio: AppValues.gridChildAspectRatio_1_15,
          children: [
            AstronomyCardWidget(
              imgLink: "assets/images/sunrise.png",
              time: "05:60 AM",
            ),
            AstronomyCardWidget(
              imgLink: "assets/images/sunset.png",
              time: "06:00 PM",
            ),
            AstronomyCardWidget(
              imgLink: "assets/images/moonrise.png",
              time: "06:60 PM",
            ),
            AstronomyCardWidget(
              imgLink: "assets/images/moonset.png",
              time: "09:60 PM",
            ),
          ],
        ),
      ],
    );
  }
}
