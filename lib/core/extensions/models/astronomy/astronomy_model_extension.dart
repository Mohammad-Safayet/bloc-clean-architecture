import 'package:weather_app/core/extensions/models/astro_model_extension.dart';
import 'package:weather_app/core/extensions/models/weather_location_model_extension.dart';
import 'package:weather_app/modules/weather/astronomy/domain/entities/astronomy.dart';
import 'package:weather_app/modules/weather/astronomy/infra/models/astronomy_model.dart';

extension AstronomyModelExtension on AstronomyModel {
  Astronomy toEntity() {
    return Astronomy(
      location: location.toEntity(),
      astro: astro['astro']!.toEntity(),
    );
  }
}
