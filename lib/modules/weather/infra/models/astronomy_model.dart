import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/modules/weather/infra/models/astro_model.dart';
import 'package:weather_app/modules/weather/infra/models/weather_location_model.dart';

part 'astronomy_model.g.dart';

@JsonSerializable()
class AstronomyModel {
  @JsonKey(name: "astronomy")
  final Map<String, AstroModel> astro;
  final WeatherLocationModel location;

  AstronomyModel({
    required this.astro,
    required this.location,
  });

  factory AstronomyModel.fromJson(Map<String, dynamic> json) =>
      _$AstronomyModelFromJson(json);

  Map<String, dynamic> toJson() => _$AstronomyModelToJson(this);
}
