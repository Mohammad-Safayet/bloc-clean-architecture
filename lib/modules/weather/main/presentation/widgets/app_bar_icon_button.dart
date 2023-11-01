import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

class AppBarIconButtonWidget extends StatelessWidget with BaseWidgetMixin {
  AppBarIconButtonWidget({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  final Function onPressed;
  final IconData icon;

  @override
  Widget? body(BuildContext context) {
    return IconButton(
      onPressed: () => onPressed(),
      icon: FaIcon(
        icon,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
        size: AppValues.icon_18,
      ),
    );
  }
}
