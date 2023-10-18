import 'package:weather_app/modules/weather/current_weather/domain/entities/condition.dart';
import 'package:weather_app/modules/weather/current_weather/infra/models/condition_model.dart';

extension CoditionModelExtension on ConditionModel {
  Condition toEntity() {
    return Condition(
      text: text,
      iconHttp: iconHttp,
      code: code,
    );
  }
}
