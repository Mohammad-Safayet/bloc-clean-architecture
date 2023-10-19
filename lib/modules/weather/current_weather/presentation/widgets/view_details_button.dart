import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

class ViewDetailsButtonWidget extends StatelessWidget with BaseWidgetMixin {
  ViewDetailsButtonWidget({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: OutlinedButton(
        onPressed: () {},
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
