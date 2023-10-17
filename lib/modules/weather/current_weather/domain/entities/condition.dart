import 'package:freezed_annotation/freezed_annotation.dart';

part 'condition.freezed.dart';

@freezed
class Condition with _$Condition {
  const factory Condition({
    required String text,
    required String iconHttp,
    required int code,
  }) = _Condition;
}
