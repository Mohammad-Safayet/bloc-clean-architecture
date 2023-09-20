import 'package:flutter/material.dart';

import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/weather/presentation/widgets/astronomy_card.dart';
import 'package:weather_app/modules/weather/presentation/widgets/weather_display.dart';
import 'package:weather_app/modules/weather/presentation/widgets/weather_info.dart';
import 'package:weather_app/modules/weather/presentation/widgets/weather_screen_bar.dart';
import 'package:weather_app/modules/weather/presentation/widgets/weather_title.dart';

class WeatherScreenView extends StatelessWidget {
  const WeatherScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(
        top: AppValues.margin_12,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppValues.paddingLarge,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(
            AppValues.radiusLarge,
          ),
          topRight: Radius.circular(
            AppValues.radiusLarge,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppValues.space_16,
            ),
            // Location Title Bar
            const WeatherScreenBarWidget(),

            // Datetime of the day
            const WeatherTitleWidget(),

            // Weather DisPlay
            const WeatherDisplayWidget(),

            // Weather Info Cards
            const WeatherInfoWidget(),

            GridView.count(
              primary: false,
              shrinkWrap: true,
              childAspectRatio: 1.25,
              crossAxisSpacing: 25,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
              padding: const EdgeInsets.only(bottom: AppValues.padding,),
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
        ),
      ),
    );
  }
}
