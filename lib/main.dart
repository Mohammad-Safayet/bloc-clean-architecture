import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:weather_app/modules/application.dart';

import 'core/config/config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  EnvConfig devConfig = EnvConfig(
    appName: packageInfo.appName,
    appVersion: packageInfo.version,
    baseUrl: "https://api.weatherapi.com/v1",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    type: Environment.DEVELOPMENT,
    config: devConfig,
  );

  runApp(
    const WeatherApplication(),
  );
}
