import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

class WeatherInfoTileWidget extends StatelessWidget with BaseWidgetMixin {
  WeatherInfoTileWidget({
    Key? key,
    required this.bgColor,
    required this.title,
    required this.value,
    this.unit,
  }) : super(key: key);

  final Color bgColor;
  final String title;
  final String value;
  final String? unit;

  @override
  Widget body(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: AppTextStyles.bodySmall,
            softWrap: true,
            maxLines: 2,
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    value,
                    style: AppTextStyles.displayXSmall,
                  ),
                ),
                if (unit != null)
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      unit!,
                      style: AppTextStyles.captions,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
