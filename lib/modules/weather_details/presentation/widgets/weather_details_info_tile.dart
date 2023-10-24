import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

class WeatherDetailsInfoTileWidget extends StatelessWidget
    with BaseWidgetMixin {
  WeatherDetailsInfoTileWidget({
    Key? key,
    required this.bgColor,
    required this.title,
    required this.value,
    this.unit = "",
  }) : super(key: key);

  final Color bgColor;
  final String title;
  final String value;
  final String unit;

  @override
  Widget body(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.all(
        AppValues.padding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              title,
              style: AppTextStyles.titleBold,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      value,
                      style: AppTextStyles.display,
                    ),
                  ),
                ),
                Text(
                  unit,
                  style: AppTextStyles.bodySmallBold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
