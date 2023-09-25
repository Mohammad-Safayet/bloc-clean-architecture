import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/weather/presentation/widgets/current_weather/weather_display.dart';
import 'package:weather_app/modules/weather/presentation/widgets/current_weather/weather_info.dart';
import 'package:weather_app/modules/weather/presentation/widgets/current_weather/weather_screen_bar.dart';
import 'package:weather_app/modules/weather/presentation/widgets/current_weather/weather_title.dart';
import 'package:weather_app/modules/weather/presentation/widgets/current_weather/view_details_button.dart';

class CurrentWeatherView extends StatelessWidget with BaseWidgetMixin {
  CurrentWeatherView({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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

          // View more Button
          ViewDetailsButtonWidget(),
        ],
      ),
    );
  }
}
