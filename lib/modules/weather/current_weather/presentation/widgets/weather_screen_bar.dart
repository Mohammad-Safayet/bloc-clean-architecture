import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/shared/widgets/icon_text.dart';

class WeatherScreenBarWidget extends StatelessWidget with BaseWidgetMixin {
  WeatherScreenBarWidget({
    Key? key,
    required this.locationCity,
    required this.locationContinent,
  }) : super(key: key);

  final String locationCity;
  final String locationContinent;

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppValues.paddingSmall,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: IconTextWidget(
              icon: const FaIcon(
                FontAwesomeIcons.mapPin,
                size: AppValues.icon_12,
              ),
              text: locationCity,
            ),
          ),
          const SizedBox(
            width: AppValues.space_10,
          ),
          Expanded(
            flex: 4,
            child: IconTextWidget(
              icon: const FaIcon(
                FontAwesomeIcons.sun,
                size: AppValues.icon_12,
              ),
              text: locationContinent,
            ),
          ),
        ],
      ),
    );
  }
}
