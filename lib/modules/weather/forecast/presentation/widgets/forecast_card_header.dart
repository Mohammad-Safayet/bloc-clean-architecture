import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

class ForecastCardHeaderWidget extends StatelessWidget with BaseWidgetMixin {
  final String headerText;

  ForecastCardHeaderWidget({
    super.key,
    required this.headerText,
  });

  @override
  Widget? body(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          headerText,
          style: AppTextStyles.displaySmall,
        ),
      ),
    );
  }
}
