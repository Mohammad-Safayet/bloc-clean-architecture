import 'package:flutter/material.dart';

import 'package:weather_app/core/config/config.dart';
import 'package:weather_app/core/routes/app_pages.dart';

class WeatherApplication extends StatelessWidget {
  const WeatherApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config = BuildConfig.instance.envConfig;
    final env = BuildConfig.instance.environment;

    return MaterialApp.router(
      title: config.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Montserrat',
      ),
      routerConfig: AppPages.routes,
      debugShowCheckedModeBanner: env == Environment.DEVELOPMENT,
    );
  }
}
