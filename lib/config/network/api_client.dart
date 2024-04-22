import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../env/build_config.dart';
import 'api_throw_handler.dart';
import 'network.dart';

abstract class ApiClient {
  Future<dynamic> get({
    required String url,
    Map<String, dynamic>? params,
  });

  Future<dynamic> post({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? params,
  });
}

@LazySingleton(as: ApiClient)
class ApiClentImpl implements ApiClient {
  ApiClentImpl(this.dio, this.appVersion);
  final Dio dio;
  final AppVersion appVersion;

  _returnResponse({required Response response}) {
    return APIThrowHandler.instance.handleResponse(response);
  }

  @override
  Future get({
    required String url,
    Map<String, dynamic>? params,
  }) async {
    final response = await dio.get(
      url,
      queryParameters: params,
    );
    return _returnResponse(response: response);
  }

  @override
  Future post({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? params,
  }) async {
    final response = await dio.post(
      url,
      data: body,
      queryParameters: params,
    );
    return _returnResponse(response: response);
  }
}

@module
abstract class DioModule {
  @singleton
  Dio get instance {
    Dio dio = Dio(BaseOptions(
      baseUrl: AppNetwork().baseUrl,
      receiveDataWhenStatusError: true,
      responseType: ResponseType.json,
      connectTimeout: AppNetwork.connectionTimeout,
      receiveTimeout: AppNetwork.receiveTimeout,
      headers: {
        'Accept': 'application/json',
        'app-id': '66252961c2370924cd18656b',
      },
      followRedirects: false,
      validateStatus: (status) => status! <= 500,
    ));

    if (!BuildConfig.isProd()) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
        ),
      );
    }

    return dio;
  }
}
