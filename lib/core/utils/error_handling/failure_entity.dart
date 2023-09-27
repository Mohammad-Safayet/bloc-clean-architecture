import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_entity.freezed.dart';

@freezed
class FailureEntity with _$FailureEntity {
  const FailureEntity._();

  const factory FailureEntity.applicationFailure({
    required String message,
  }) = ApplicationFailure;

  const factory FailureEntity.apiFailure({
    required int httpCode,
    required String status,
    required String message,
  }) = ApiFailure;

  const factory FailureEntity.jsonFormatFailure({
    required String message,
  }) = JsonFormatFailure;

  const factory FailureEntity.networkingFailure({
    required String message,
  }) = NetworkingFailure;

  const factory FailureEntity.notFoundFailure({
    required int httpCode,
    required String status,
    required String message,
  }) = NotFoundFailure;

  const factory FailureEntity.serviceUnavailableFailure({
    required int httpCode,
    required String status,
    required String message,
  }) = ServiceUnavailableFailure;

  const factory FailureEntity.timeoutFailure({
    required String message,
  }) = TimeoutFailure;

  const factory FailureEntity.unauthorizedFailure({
    required int httpCode,
    required String status,
    required String message,
  }) = UnauthorizedFailure;
}
