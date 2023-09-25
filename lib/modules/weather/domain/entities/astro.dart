import 'package:freezed_annotation/freezed_annotation.dart';

part 'astro.freezed.dart';

@freezed
class Astro with _$Astro {
  const factory Astro({
    required DateTime sunRise,
    required DateTime sunSet,
    required DateTime moonRise,
    required DateTime moonSet,
    required String moonPhase,
    required int moonIllumination,
    required bool isMoonUp,
    required bool isSunUp,
  }) = _Astro;
}
