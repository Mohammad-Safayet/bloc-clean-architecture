import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_entity.freezed.dart';

@freezed
class FailureEntity with _$FailureEntity {
  const FailureEntity._();

  const factory FailureEntity.applicationFailure() = ApplicationFailure;

  const factory FailureEntity.apiFailure() = ApiFailure;

  const factory FailureEntity.jsonFormatFailure() = JsonFormatFailure;

  const factory FailureEntity.networkingFailure() = NetworkingFailure;

  const factory FailureEntity.notFoundFailure() = NotFoundFailure;

  const factory FailureEntity.serviceUnavailableFailure() =
      ServiceUnavailableFailure;

  const factory FailureEntity.timeoutFailure() = TimeoutFailure;

  const factory FailureEntity.unauthorizedFailure() = UnauthorizedFailure;
}
