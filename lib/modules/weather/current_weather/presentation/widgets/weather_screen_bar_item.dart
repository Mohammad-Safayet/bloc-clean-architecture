import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

class WeatherScreenBarItemWidget extends StatelessWidget with BaseWidgetMixin {
  WeatherScreenBarItemWidget ({
    Key? key,
    required this.icon,
    required this.text, required this.mainAxisAlignment,
  }) : super(key: key);

  final Widget icon;
  final String text;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget body(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.5,
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          icon,
          const SizedBox(
            width: AppValues.space_4,
          ),
          Flexible(
            child: Text(
              text,
              style: AppTextStyles.titleSmall,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
