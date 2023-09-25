import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/weather/presentation/widgets/astronomy/astronomy_info.dart';

class AstronomyView extends StatelessWidget with BaseWidgetMixin {
  AstronomyView({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppValues.padding,
      ),
      child: AstronomyInfoView(
        title: "Astronomy",
      ),
    );
  }
}
