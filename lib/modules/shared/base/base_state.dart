import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/utils/error_handling/error_handling.dart';

part 'base_state.freezed.dart';

@freezed
class BaseState<T> with _$BaseState<T> {
  const factory BaseState.initial() = Initial;

  const factory BaseState.loading() = Loading;

  const factory BaseState.success({
    required T data,
  }) = Success;

  const factory BaseState.error({
    required FailureEntity error,
  }) = Error;
}
