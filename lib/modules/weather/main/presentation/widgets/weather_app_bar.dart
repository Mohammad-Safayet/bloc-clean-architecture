import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/modules/shared/widgets/application_bar.dart';
import 'package:weather_app/modules/weather/main/presentation/widgets/app_bar_icon_button.dart';

class WeatherAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const WeatherAppBarWidget({
    Key? key,
    required this.appTitle,
  }) : super(key: key);

  final String appTitle;

  @override
  Widget build(BuildContext context) {
    return ApplicationBar(
      leadingIcon: AppBarIconButtonWidget(
        onPressed: () {},
        icon: FontAwesomeIcons.arrowRotateRight,
      ),
      appBarTitleText: appTitle,
      actions: [
        AppBarIconButtonWidget(
          onPressed: () {},
          icon: FontAwesomeIcons.magnifyingGlass,
        ),
        AppBarIconButtonWidget(
          onPressed: () {},
          icon: FontAwesomeIcons.ellipsisVertical,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
