import 'package:flutter/material.dart';
import 'package:weather_app/modules/shared/widgets/application_bar.dart';

class WeatherDetailsAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const WeatherDetailsAppBarWidget({
    Key? key,
    required this.appTitle,
  }) : super(key: key);

  final String appTitle;

  @override
  Widget build(BuildContext context) {
    return ApplicationBar(
      appBarTitleText: appTitle,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
