import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

class WeatherTitleWidget extends StatelessWidget with BaseWidgetMixin {
  WeatherTitleWidget({
    Key? key,
    required this.localTime,
  }) : super(key: key);

  final DateTime localTime;

  @override
  Widget body(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: AppValues.paddingSmall,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            DateFormat().add_EEEE().format(localTime),
            style: AppTextStyles.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 25.0,
            child: Center(
              child: Container(
                margin: const EdgeInsetsDirectional.symmetric(
                  horizontal: AppValues.padding_4,
                ),
                height: 2.0,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
          Text(
            DateFormat().add_MMMMd().format(localTime),
            style: AppTextStyles.titleLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
