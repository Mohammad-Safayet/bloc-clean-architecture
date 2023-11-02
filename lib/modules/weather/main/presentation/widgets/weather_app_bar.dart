import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/core/extensions/position_extension.dart';
import 'package:weather_app/modules/home/presentation/bloc/location_bloc.dart';
import 'package:weather_app/modules/shared/widgets/application_bar.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/bloc/current_weather_bloc.dart';
import 'package:weather_app/modules/weather/main/presentation/widgets/app_bar_icon_button.dart';

class WeatherAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const WeatherAppBarWidget({
    Key? key,
    required this.appTitle,
    required this.position,
  }) : super(key: key);

  final String appTitle;
  final Position position;

  @override
  Widget build(BuildContext context) {
    return ApplicationBar(
      leadingIcon: AppBarIconButtonWidget(
        onPressed: () {
          context.read<LocationBloc>().add(
                const RequestCurrentLocation(),
              );
        },
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
