import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/extensions/datetime_extension.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

class ForecastCardDetailsWidget extends StatelessWidget with BaseWidgetMixin {
  final String conditionCaptions;
  final DateTime date;

  ForecastCardDetailsWidget({
    super.key,
    required this.conditionCaptions,
    required this.date,
  });

  @override
  Widget? body(BuildContext context) {
    return Row(

      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              conditionCaptions,
              style: AppTextStyles.bodySmallBold,
            ),
            Text(
              (date.isSameDate(DateTime.now()))
                  ? "Today"
                  : DateFormat().add_EEEE().format(date),
              style: AppTextStyles.titleLight,
            ),
          ],
        ),
      ],
    );
  }
}
