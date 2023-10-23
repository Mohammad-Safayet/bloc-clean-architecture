import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

class WeatherDetailsHeaderWidget extends StatelessWidget with BaseWidgetMixin {
  final String city;
  final String country;

  WeatherDetailsHeaderWidget({
    super.key,
    required this.city,
    required this.country,
  });

  @override
  Widget? body(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: AppValues.margin,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppValues.padding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DateFormat().add_yMMMMEEEEd().format(DateTime.now()),
            style: AppTextStyles.appBarTitleSmall,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          Text(
            "$city,$country",
            style: AppTextStyles.appBarTitleSmall,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
