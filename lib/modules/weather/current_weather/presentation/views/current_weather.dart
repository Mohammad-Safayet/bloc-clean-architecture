import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/widgets/weather_display.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/widgets/weather_info.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/widgets/weather_screen_bar.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/widgets/view_details_button.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/widgets/weather_title.dart';

class CurrentWeatherView extends StatelessWidget with BaseWidgetMixin {
  CurrentWeatherView({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return  Container(
      child: const  Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: AppValues.space_16,
          ),
          // Location Title Bar
          WeatherScreenBarWidget(),

          // Datetime of the day
          WeatherTitleWidget(),

          // Weather DisPlay
          WeatherDisplayWidget(),

          // Weather Info Cards
          WeatherInfoWidget(),

          // View more Button
          ViewDetailsButtonWidget(),
        ],
      ),
    );
  }
}
