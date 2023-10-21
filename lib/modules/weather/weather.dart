import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/core/utils/di/di.dart';

import 'package:weather_app/modules/shared/base/base_screen.dart';
import 'package:weather_app/modules/weather/astronomy/domain/repositories/astronomy_repo_impl.dart';
import 'package:weather_app/modules/weather/astronomy/infra/datasources/astronomy_remote_datasource.dart';
import 'package:weather_app/modules/weather/astronomy/presentation/bloc/astronomy_bloc.dart';
import 'package:weather_app/modules/weather/current_weather/domain/repositories/current_weather_repository_impl.dart';
import 'package:weather_app/modules/weather/current_weather/infra/datasources/current_weather_remote_datasource.dart';
import 'package:weather_app/modules/weather/current_weather/presentation/bloc/current_weather_bloc.dart';
import 'package:weather_app/modules/weather/forecast/domain/repositories/forecast_repository_impl.dart';
import 'package:weather_app/modules/weather/forecast/domain/repositories/forecast_repository_impl.dart';
import 'package:weather_app/modules/weather/forecast/infra/datasources/forecast_remote_datasource.dart';
import 'package:weather_app/modules/weather/forecast/infra/datasources/forecast_remote_datasource.dart';
import 'package:weather_app/modules/weather/forecast/infra/datasources/forecast_remote_datasource.dart';
import 'package:weather_app/modules/weather/forecast/presentation/bloc/forecast_bloc.dart';
import 'package:weather_app/modules/weather/main/presentation/bloc/connectivity_bloc.dart';
import 'package:weather_app/modules/weather/main/presentation/views/weather_screen.dart';

class WeatherPage extends BaseScreen {
  final Position position;

  WeatherPage({
    super.key,
    required this.position,
  }) {
    _registerDependency();
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ConnectivityBloc(),
        ),
        BlocProvider(
          create: (context) => AstronomyBloc(
            DependencyInjection.instance.getInstance<AstronomyRepositoryImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => CurrentWeatherBloc(
            DependencyInjection.instance.getInstance<CurrentWeatherRepositoryImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => ForecastBloc(
            DependencyInjection.instance.getInstance<ForecastRepositoryImpl>(),
          ),
        ),
      ],
      child: WeatherScreenView(
        position: position,
      ),
    );
  }

  void _registerDependency() {
    final di = DependencyInjection.instance;

    di.register<AstronomyRemoteDataSource>(
      AstronomyRemoteDataSource(),
      DiType.SINGLETON,
    );

    di.register<AstronomyRepositoryImpl>(
      AstronomyRepositoryImpl(
        remoteDataSource: di.getInstance<AstronomyRemoteDataSource>(),
      ),
      DiType.SINGLETON,
    );

    di.register<CurrentWeatherRemoteDataSource>(
      CurrentWeatherRemoteDataSource(),
      DiType.SINGLETON,
    );

    di.register<CurrentWeatherRepositoryImpl>(
      CurrentWeatherRepositoryImpl(
        remoteDataSource: di.getInstance<CurrentWeatherRemoteDataSource>(),
      ),
      DiType.SINGLETON,
    );

    di.register<ForecastRemoteDatasource>(
      ForecastRemoteDatasource(),
      DiType.SINGLETON,
    );

    di.register<ForecastRepositoryImpl>(
      ForecastRepositoryImpl(
        remoteDataSource: di.getInstance<ForecastRemoteDatasource>(),
      ),
      DiType.SINGLETON,
    );
  }
}
