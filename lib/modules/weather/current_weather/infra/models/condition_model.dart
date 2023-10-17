import 'package:json_annotation/json_annotation.dart';

part 'condition_model.g.dart';

@JsonSerializable()
class ConditionModel {
  final String text;
  @JsonKey(name: "icon")
  final String iconHttp;
  final int code;

  ConditionModel({
    required this.text,
    required this.iconHttp,
    required this.code,
  });

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionModelToJson(this);
}
