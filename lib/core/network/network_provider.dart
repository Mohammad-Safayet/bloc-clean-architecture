import 'package:dio/dio.dart';
import 'package:weather_app/core/config/build_config.dart';
import 'package:weather_app/core/network/network_request_header.dart';

class NetworkProvider {
  static Dio? _instance;

  static final BaseOptions _options = BaseOptions(
    baseUrl: BuildConfig.instance.envConfig.baseUrl,
    connectTimeout: const Duration(seconds: 60,),
    receiveTimeout: const Duration(seconds: 60,),
  );

  static Dio get httpDio {
    if (_instance == null) {
      _instance = Dio(_options);

      return _instance!;
    } else {
      _instance!.interceptors.clear();

      return _instance!;
    }
  }

  static Dio get tokenClient {
    _addInterceptors();

    return _instance!;
  }

  static Dio get dioWithHeaderToken {
    _addInterceptors();

    return _instance!;
  }

  static _addInterceptors() {
    _instance ??= httpDio;
    _instance!.interceptors.clear();
    _instance!.interceptors.add(RequestHeaderInterceptor());
  }

  static String _buildContentType(String version) {
    return "user_defined_content_type+$version";
  }

  NetworkProvider.setContentType(String version) {
    _instance?.options.contentType = _buildContentType(version);
  }

  NetworkProvider.setContentTypeApplicationJson() {
    _instance?.options.contentType = "application/json";
  }
}