import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/shared/widgets/icon_text.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/widgets/weather_screen_bar_item.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/widgets/weather_screen_bar_item.dart';

class WeatherScreenBarWidget extends StatelessWidget with BaseWidgetMixin {
  WeatherScreenBarWidget({
    Key? key,
    required this.locationCity,
    required this.locationContinent,
    required this.isDay,
  }) : super(key: key);

  final String locationCity;
  final String locationContinent;
  final bool isDay;

  @override
  Widget body(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: AppValues.paddingSmall,
      ),
      child: Row(
        children: [
          WeatherScreenBarItemWidget(
            icon: FaIcon(
              FontAwesomeIcons.mapPin,
              size: AppValues.icon_12,
            ),
            text: locationCity,
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          const SizedBox(
            width: AppValues.space_6,
          ),
          WeatherScreenBarItemWidget(
            icon: FaIcon(
              (isDay) ? FontAwesomeIcons.sun : FontAwesomeIcons.moon,
              size: AppValues.icon_12,
            ),
            text: locationContinent,
            mainAxisAlignment: MainAxisAlignment.end,
          ),
        ],
      ),
    );
  }
}
