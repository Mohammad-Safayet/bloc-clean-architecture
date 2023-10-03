import 'package:intl/intl.dart';

import 'package:weather_app/modules/weather/domain/entities/astro.dart';
import 'package:weather_app/modules/weather/astronomy/infra/models/astro_model.dart';

extension AstroModelExtension on AstroModel {
  Astro toEntity() {
    return Astro(
      sunRise: DateFormat.jm().parseLoose(sunRise),
      sunSet: DateFormat.jm().parseLoose(sunSet),
      moonRise: DateFormat.jm().parseLoose(moonRise),
      moonSet: DateFormat.jm().parseLoose(moonSet),
      moonPhase: moonPhase,
      moonIllumination: int.parse(moonIllumination),
      isMoonUp: isMoonUp == 1,
      isSunUp: isSunUp == 1,
    );
  }
}
