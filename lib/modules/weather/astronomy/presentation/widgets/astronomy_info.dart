import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/weather/astronomy/domain/entities/astro.dart';
import 'package:weather_app/modules/weather/astronomy/domain/entities/astronomy.dart';
import 'package:weather_app/modules/weather/astronomy/presentation/widgets/astronomy_card.dart';

class AstronomyInfoView extends StatelessWidget with BaseWidgetMixin {
  AstronomyInfoView({
    Key? key,
    required this.astronomy,
  }) : super(key: key);

  final Astronomy astronomy;

  @override
  Widget body(BuildContext context) {
    final Astro astro = astronomy.astro;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            DateFormat.yMMMMEEEEd().format(
              astronomy.location.localTime.add(
                AppValues.duration1D,
              ),
            ),
            style: AppTextStyles.title,
          ),
        ),
        const SizedBox(
          height: AppValues.space_8,
        ),
        GridView.count(
          primary: false,
          shrinkWrap: true,
          crossAxisCount: AppValues.gridChildCount_2,
          crossAxisSpacing: AppValues.axisSpacing_10,
          mainAxisSpacing: AppValues.axisSpacing_15,
          childAspectRatio: AppValues.gridChildAspectRatio_1_35,
          children: [
            AstronomyCardWidget(
              imgLink: "assets/images/sunrise.png",
              time: DateFormat.jmv().format(astro.sunRise),
            ),
            AstronomyCardWidget(
              imgLink: "assets/images/sunset.png",
              time: DateFormat.jmv().format(astro.sunSet),
            ),
            AstronomyCardWidget(
              imgLink: "assets/images/moonrise.png",
              time: DateFormat.jmv().format(astro.moonRise),
            ),
            AstronomyCardWidget(
              imgLink: "assets/images/moonset.png",
              time: DateFormat.jmv().format(astro.moonSet),
            ),
          ],
        ),
      ],
    );
  }
}
