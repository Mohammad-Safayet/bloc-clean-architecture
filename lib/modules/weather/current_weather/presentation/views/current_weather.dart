import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/core/extensions/position_extension.dart';
import 'package:weather_app/core/routes/app_pages.dart';
import 'package:weather_app/core/utils/error_handling/failure_entity.dart';
import 'package:weather_app/modules/shared/base/base_view.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/shared/widgets/loading.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/weather.dart';
import 'package:weather_app/modules/weather/current_weather/domain/entities/weather_query_param.dart';
import 'package:weather_app/modules/weather/current_weather/domain/repositories/current_weather_repository_impl.dart';
import 'package:weather_app/modules/weather/current_weather/domain/usecases/get_current_weather_data_usecase.dart';
import 'package:weather_app/modules/weather/current_weather/infra/datasources/current_weather_remote_datasource.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/bloc/current_weather_bloc.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/widgets/weather_display.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/widgets/weather_info.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/widgets/weather_screen_bar.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/widgets/view_details_button.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/widgets/weather_title.dart';

class CurrentWeatherView extends BaseView<CurrentWeatherBloc, Weather> {
  final Position position;

  CurrentWeatherView({
    super.key,
    required this.position,
  });

  @override
  void error(
    BuildContext context,
    FailureEntity entity,
  ) {
    context.go(Routes.ERROR, extra: entity);
  }

  @override
  Widget initial(
    BuildContext context,
    CurrentWeatherBloc bloc,
  ) {
    bloc.add(
      GetCurrentWeatherData(
        q: position.toQString(),
      ),
    );

    return const LoadingWidget();
  }

  @override
  Widget success(
    BuildContext context,
    CurrentWeatherBloc bloc,
    Weather data,
  ) {
    return const SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: AppValues.space_16,
          ),
          // Location Title Bar
          WeatherScreenBarWidget(),

          // Datetime of the day
          WeatherTitleWidget(),

          // Weather DisPlay
          WeatherDisplayWidget(),

          // Weather Info Cards
          WeatherInfoWidget(),

          // View more Button
          ViewDetailsButtonWidget(),
        ],
      ),
    );
  }
}
