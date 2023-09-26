import 'dart:io';

import 'package:dio/dio.dart';
import 'package:weather_app/core/config/build_config.dart';
import 'package:weather_app/core/network/network_error_handlers.dart';
import 'package:weather_app/core/network/network_provider.dart';
import 'package:weather_app/core/utils/error_handling/error_handling.dart';

abstract class BaseRemoteDataSource {
  Dio get dioClient => NetworkProvider.dioWithHeaderToken;

  final logger = BuildConfig.instance.envConfig.logger;

  Future<Response<T>> callApiWithErrorParser<T>(Future<Response<T>> api) async {
    try {
      Response<T> response = await api;

      if (response.statusCode != HttpStatus.ok ||
          (response.data as Map<String, dynamic>)['statusCode'] !=
              HttpStatus.ok) {
        // TODO
      }

      return response;
    } on DioException catch (dioError) {
      Exception exception = handleNetworkError(dioError);
      logger.e(
        "Throwing error from repository: >>>>>>> $exception : ${(exception as BaseException).message}",
      );
      throw exception;
    } catch (error) {
      logger.e("Generic error: >>>>>>> $error");

      if (error is BaseException) {
        rethrow;
      }

      throw handleError("$error");
    }
  }
}
