import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:weather_app/modules/application.dart';

import 'core/config/config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: "env/dev.env");

  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  EnvConfig devConfig = EnvConfig(
    appName: packageInfo.appName,
    appVersion: packageInfo.version,
    baseUrl: dotenv.env["BASE_URL"]!,
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
