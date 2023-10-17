import 'package:json_annotation/json_annotation.dart';

part 'astro_model.g.dart';

@JsonSerializable()
class AstroModel {
  @JsonKey(name: "sunrise")
  final String sunRise;
  @JsonKey(name: "sunset")
  final String sunSet;
  @JsonKey(name: "moonrise")
  final String moonRise;
  @JsonKey(name: "moonset")
  final String moonSet;
  @JsonKey(name: "moon_phase")
  final String moonPhase;
  @JsonKey(name: "moon_illumination")
  final String moonIllumination;
  @JsonKey(name: "is_moon_up")
  final int isMoonUp;
  @JsonKey(name: "is_sun_up")
  final int isSunUp;

  AstroModel({
    required this.sunRise,
    required this.sunSet,
    required this.moonRise,
    required this.moonSet,
    required this.moonPhase,
    required this.moonIllumination,
    required this.isMoonUp,
    required this.isSunUp,
  });

  factory AstroModel.fromJson(Map<String, dynamic> json) => _$AstroModelFromJson(json);

  Map<String, dynamic> toJson() => _$AstroModelToJson(this);
}
