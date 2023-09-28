part of 'app_pages.dart';

abstract class Routes {
  static const HOME = _Path.HOME;
  static const WEATHER_DETAILS = _Path.WEATHER_DETAILS;
  static const SETTINGS = _Path.SETTINGS;
  static const ERROR = _Path.ERROR;
}

abstract class _Path {
  static const HOME = "/home";
  static const WEATHER_DETAILS = "/current-weather_details";
  static const SETTINGS = "/settings";
  static const ERROR = "/error";
}
