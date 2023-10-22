import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        const Spacer(),
        OutlinedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<CircleBorder>(
              const CircleBorder(),
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () {},
          child: const FaIcon(
            FontAwesomeIcons.arrowRight,
            size: AppValues.icon_18,
          ),
        )
      ],
    );
  }
}
