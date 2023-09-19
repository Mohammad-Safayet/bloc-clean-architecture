import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeatherAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const WeatherAppBarWidget({
    Key? key,
    required this.appTitle,
  }) : super(key: key);

  final String appTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
      elevation: 0.0,
      scrolledUnderElevation: 0.0,
      leading: IconButton(
        onPressed: () {},
        icon: FaIcon(
          FontAwesomeIcons.arrowRotateRight,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
          size: 18.0,
        ),
      ),
      title: Text(
        appTitle,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            size: 18.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.ellipsisVertical,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            size: 18.0,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
