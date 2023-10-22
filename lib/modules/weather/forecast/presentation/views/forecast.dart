import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/core/extensions/position_extension.dart';
import 'package:weather_app/core/routes/app_pages.dart';
import 'package:weather_app/core/utils/error_handling/failure_entity.dart';
import 'package:weather_app/modules/shared/base/base_view.dart';
import 'package:weather_app/modules/shared/widgets/loading.dart';
import 'package:weather_app/modules/weather/forecast/domain/entities/forecast.dart';
import 'package:weather_app/modules/weather/forecast/presentation/bloc/forecast_bloc.dart';
import 'package:weather_app/modules/weather/forecast/presentation/widgets/forecast_card.dart';

class ForecastView extends BaseView<ForecastBloc, Forecast> {
  final Position position;

  ForecastView({
    super.key,
    required this.position,
  });

  @override
  void error(BuildContext context, FailureEntity entity) {
    context.go(Routes.ERROR, extra: entity);
  }

  @override
  Widget initial(BuildContext context, ForecastBloc bloc) {
    bloc.add(
      GetForecastData(
        query: position.toQString(),
        days: 7,
      ),
    );

    return const LoadingWidget();
  }

  @override
  Widget success(BuildContext context, ForecastBloc bloc, Forecast data) {
    final list = data.forecastDays;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppValues.padding,
        horizontal: AppValues.paddingLarge,
      ),
      height: AppValues.container_250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: AppValues.margin,
            ),
            child: const Text(
              "Weather Forecast",
              style: AppTextStyles.title,
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (context, index) {
                return ForecastCardWidget(
                  date: list[index].date,
                  avgTemp: list[index].day.avgTempC,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
