import 'package:freezed_annotation/freezed_annotation.dart';

part 'astronomy_query_param.freezed.dart';

@freezed
class AstronomyQueryParam with _$AstronomyQueryParam {
  const factory AstronomyQueryParam({
    required String key,
    required String q,
    required String dt,
  }) = _AstronomyQueryParam;
}
