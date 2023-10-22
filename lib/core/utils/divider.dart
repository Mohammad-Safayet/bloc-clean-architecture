import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

class DividerWidget extends StatelessWidget with BaseWidgetMixin {
  @override
  Widget? body(BuildContext context) {
    return Divider(
      color:
      Theme.of(context).colorScheme.inverseSurface.withOpacity(0.2),
      thickness: AppValues.dividerThickness_2,
      endIndent: AppValues.dividerIndent_5,
      indent: AppValues.dividerIndent_5,
    );
  }

}