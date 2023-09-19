import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:weather_app/modules/home/presentation/widgets/weather_app_bar.dart';
import 'package:weather_app/modules/weather/presentation/views/weather_screen.dart';

class HomeScreenView extends StatelessWidget {
  HomeScreenView({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return _annotatedRegion(context);
  }

  Widget _annotatedRegion(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        //Status bar color for android
        statusBarColor: Theme.of(context).colorScheme.surfaceVariant,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Material(
        color: Colors.transparent,
        child: _pageScaffold(context),
      ),
    );
  }

  Widget _pageScaffold(BuildContext context) {
    return Scaffold(
      key: globalKey,
      backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
      appBar: _appBar(context),
      body: pageContent(context),
    );
  }

  PreferredSizeWidget? _appBar(BuildContext context) {
    return const WeatherAppBarWidget(appTitle: "appTitle");
  }

  Widget pageContent(BuildContext context) {
    return const SafeArea(
      child: WeatherScreenView(),
    );
  }

}
