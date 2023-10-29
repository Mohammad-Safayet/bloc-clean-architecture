import 'package:intl/intl.dart';

import 'package:weather_app/modules/weather/astronomy/domain/entities/astro.dart';
import 'package:weather_app/modules/weather/astronomy/infra/models/astro_model.dart';

extension AstroModelExtension on AstroModel {
  Astro toEntity() {
    return Astro(
      sunRise: (moonSet == "No sunrise")
          ? DateTime.now()
          : DateFormat.jm().parseLoose(sunRise),
      sunSet: (moonSet == "No sunset")
          ? DateTime.now()
          : DateFormat.jm().parseLoose(sunSet),
      moonRise: (moonSet == "No moonrise")
          ? DateTime.now()
          : DateFormat.jm().parseLoose(moonRise),
      moonSet: (moonSet == "No moonset")
          ? DateTime.now()
          : DateFormat.jm().parseLoose(moonSet),
      moonPhase: moonPhase,
      moonIllumination: moonIllumination,
      isMoonUp: isMoonUp == 1,
      isSunUp: isSunUp == 1,
    );
  }
}
