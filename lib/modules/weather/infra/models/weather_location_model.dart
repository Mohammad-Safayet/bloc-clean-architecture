import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_location_model.g.dart';

@JsonSerializable()
class WeatherLocationModel {
  final String name;
  final String region;
  final String country;
  @JsonKey(name: "lat")
  final double latitude;
  @JsonKey(name: "lon")
  final double longitude;
  @JsonKey(name: "tz_id")
  final String tzId;
  @JsonKey(name: "localtime")
  final String localTime;

  WeatherLocationModel({
    required this.name,
    required this.region,
    required this.country,
    required this.latitude,
    required this.longitude,
    required this.tzId,
    required this.localTime,
  });

  factory WeatherLocationModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherLocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherLocationModelToJson(this);
}
