import 'package:flutter/material.dart';

import 'package:weather_app/modules/home/presentation/views/home_screen.dart';

class WeatherApplication extends StatelessWidget {
  const WeatherApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Montserrat',
      ),
      home: HomeScreenView(),
    );
  }
}
