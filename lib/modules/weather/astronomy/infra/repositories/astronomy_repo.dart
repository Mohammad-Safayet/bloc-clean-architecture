import 'package:weather_app/modules/weather/astronomy/domain/entities/astronomy.dart';

abstract class AstronomyRepository {
  Future<Astronomy> getTodayData(String q);

  Future<Astronomy> getTomorrowData(String q);
}