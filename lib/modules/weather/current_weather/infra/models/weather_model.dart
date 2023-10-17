import 'package:json_annotation/json_annotation.dart';

import 'package:weather_app/modules/weather/current_weather/infra/models/current_model.dart';
import 'package:weather_app/modules/weather/main/infra/models/weather_location_model.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel {
  final WeatherLocationModel location;
  final CurrentModel current;

  WeatherModel({
    required this.location,
    required this.current,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}
