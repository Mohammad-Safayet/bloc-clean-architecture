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
      padding: const EdgeInsets.symmetric(
        horizontal: AppValues.paddingXLarge,
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
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                Text(
                  value,
                  style: AppTextStyles.displaySmall,
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
