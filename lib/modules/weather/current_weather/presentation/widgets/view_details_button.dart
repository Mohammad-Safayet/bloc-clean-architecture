import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/core/routes/app_pages.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/weather.dart';

class ViewDetailsButtonWidget extends StatelessWidget with BaseWidgetMixin {
  final Weather weather;

  ViewDetailsButtonWidget({
    Key? key,
    required this.weather,
  }) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: OutlinedButton(
        onPressed: () {
          context.push(
            Routes.WEATHER_DETAILS,
            extra: weather,
          );
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppValues.radius_12,
            ),
          ),
        ),
        child: const SizedBox(
          width: AppValues.container_100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("View More"),
              FaIcon(
                FontAwesomeIcons.arrowRight,
                size: AppValues.icon_18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
