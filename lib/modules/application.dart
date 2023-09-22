import 'package:flutter/material.dart';
import 'package:weather_app/core/config/config.dart';

import 'package:weather_app/modules/home/presentation/views/home_screen.dart';

class WeatherApplication extends StatelessWidget {
  const WeatherApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _config = BuildConfig.instance.envConfig;
    return MaterialApp(
      title: _config.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Montserrat',
      ),
      home: HomeScreenView(),
    );
  }
}
