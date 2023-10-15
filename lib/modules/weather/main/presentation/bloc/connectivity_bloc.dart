import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/config/config.dart';
import 'package:weather_app/modules/shared/base/base_state.dart';

part 'connectivity_event.dart';

part 'connectivity_bloc.freezed.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, BaseState> {
  final _logger = BuildConfig.instance.envConfig.logger;

  ConnectivityBloc() : super(const Initial()) {
    on<CheckConnectivity>(_checkConnectivity);
  }

  Future _checkConnectivity(event, emit) async {
    emit(const Loading());

    final connectivityResult = await (Connectivity().checkConnectivity());

    switch (connectivityResult) {
      case ConnectivityResult.mobile:
      case ConnectivityResult.wifi:
      case ConnectivityResult.vpn:
        emit(
          const Success(
            data: true,
          ),
        );
        break;
      default:
        emit(
          const Success(
            data: false,
          ),
        );
    }
  }
}
