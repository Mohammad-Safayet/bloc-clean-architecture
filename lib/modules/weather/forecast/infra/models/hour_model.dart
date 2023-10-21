import 'package:json_annotation/json_annotation.dart';

part 'hour_model.g.dart';

@JsonSerializable()
class HourModel {
  final DateTime time;
  @JsonKey(name: "temp_c")
  final double tempC;
  @JsonKey(name: "temp_f")
  final double tempF;
  @JsonKey(name: "is_day")
  final int isDay;

  // final Condition condition;
  @JsonKey(name: "wind_mph")
  final double windMph;
  @JsonKey(name: "wind_kph")
  final double windKph;
  @JsonKey(name: "wind_degree")
  final int windDegree;
  @JsonKey(name: "wind_dir")
  final String windDir;
  @JsonKey(name: "pressure_mb")
  final double pressureMb;
  @JsonKey(name: "pressure_in")
  final double pressureIn;
  @JsonKey(name: "precip_mm")
  final double precipMm;
  @JsonKey(name: "precip_in")
  final double precipIn;
  final int cloud;
  final int humidity;
  @JsonKey(name: "feelslike_c")
  final double feelslikeC;
  @JsonKey(name: "feelslike_f")
  final double feelslikeF;
  @JsonKey(name: "windchill_c")
  final double windchillC;
  @JsonKey(name: "windchill_f")
  final double windchillF;
  @JsonKey(name: "heatindex_c")
  final double heatIndexC;
  @JsonKey(name: "heatindex_f")
  final double heatIndexF;
  @JsonKey(name: "dewpoint_c")
  final double dewPointC;
  @JsonKey(name: "dewpoint_f")
  final double dewPointF;
  @JsonKey(name: "will_it_rain")
  final int willItRain;
  @JsonKey(name: "will_it_snow")
  final int willItSnow;
  @JsonKey(name: "chance_of_rain")
  final int chanceOfRain;
  @JsonKey(name: "chance_of_snow")
  final int chanceOfSnow;
  @JsonKey(name: "vis_km")
  final double visKm;
  @JsonKey(name: "vis_miles")
  final double visMiles;
  @JsonKey(name: "gust_mph")
  final double gustMph;
  @JsonKey(name: "gust_kph")
  final double gustKph;
  final double uv;

  HourModel({
    required this.time,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.windMph,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.precipIn,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.feelslikeF,
    required this.windchillC,
    required this.windchillF,
    required this.heatIndexC,
    required this.heatIndexF,
    required this.dewPointC,
    required this.dewPointF,
    required this.willItRain,
    required this.willItSnow,
    required this.chanceOfRain,
    required this.chanceOfSnow,
    required this.visKm,
    required this.visMiles,
    required this.gustMph,
    required this.gustKph,
    required this.uv,
  });

  factory HourModel.fromJson(Map<String, dynamic> json) =>
      _$HourModelFromJson(json);

  Map<String, dynamic> toJson() => _$HourModelToJson(this);
}
