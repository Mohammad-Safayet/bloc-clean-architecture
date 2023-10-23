import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/base/base_screen.dart';
import 'package:weather_app/modules/shared/widgets/divider.dart';
import 'package:weather_app/modules/weather_details/presentation/widgets/weather_details_appbar.dart';
import 'package:weather_app/modules/weather_details/presentation/widgets/weather_details_header.dart';
import 'package:weather_app/modules/weather_details/presentation/widgets/weather_details_temp.dart';

class WeatherDetailScreen extends BaseScreen {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return const WeatherDetailsAppBarWidget(
      appTitle: "lak",
    );
  }

  @override
  Widget body(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(
        top: AppValues.margin,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(
            AppValues.radiusXLarge,
          ),
          topRight: Radius.circular(
            AppValues.radiusXLarge,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // location details
            WeatherDetailsHeaderWidget(
              city: "Dhaka",
              country: "Bangladesh",
            ),
            DividerWidget(),

            // temperature

            // weather details
          ],
        ),
      ),
    );
  }
}
