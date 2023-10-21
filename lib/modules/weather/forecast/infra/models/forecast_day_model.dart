import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/modules/weather/forecast/infra/models/day_model.dart';
import 'package:weather_app/modules/weather/forecast/infra/models/hour_model.dart';

part 'forecast_day_model.g.dart';

@JsonSerializable()
class ForecastDayModel {
  final DateTime date;
  final DayModel day;
  final List<HourModel> hour;

  ForecastDayModel({
    required this.date,
    required this.day,
    required this.hour,
  });

  factory ForecastDayModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayModelFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastDayModelToJson(this);
}
