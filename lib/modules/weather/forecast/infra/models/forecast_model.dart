import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/modules/weather/forecast/infra/models/forecast_day_model.dart';
import 'package:weather_app/modules/weather/main/infra/models/weather_location_model.dart';

part 'forecast_model.g.dart';

@JsonSerializable()
class ForecastModel {
  final WeatherLocationModel location;
  final Map<String, List<ForecastDayModel>> forecast;

  ForecastModel({
    required this.location,
    required this.forecast,
  });

  factory ForecastModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastModelFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastModelToJson(this);
}
