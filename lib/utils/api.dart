import 'package:dio/dio.dart';
import 'package:fcab_map/services/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/usuario.dart';

class Api {

  static String baseUrlApi = 'http://localhost:3000';
  static int receiveTimeout = 15000; // 15 seconds
  static int connectTimeout = 15000;
  static int sendTimeout = 15000;
  final dio = createDio();
  
  final simpleDio = Dio(BaseOptions(baseUrl: baseUrlApi));

  Api._internal();

  static final _singleton = Api._internal();

  factory Api() => _singleton;

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: baseUrlApi,
      receiveTimeout: receiveTimeout, // 15 seconds
      connectTimeout: connectTimeout,
      sendTimeout: sendTimeout,
    ));

    dio.interceptors.addAll({
      AppInterceptors(dio),
    });
    return dio;
  }
}

class AppInterceptors extends Interceptor {
  final Dio dio;

  AppInterceptors(this.dio);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
        final storage = await SharedPreferences.getInstance();
        var accessToken = storage.getString('accessToken');

    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    return handler.next(options);
  }

  
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    final storage = await SharedPreferences.getInstance();
    switch (err.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioErrorType.response:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(err.requestOptions);
          case 401:
            
            _refreshToken();
            return handler.resolve(await _retry(err.requestOptions));
            throw UnauthorizedException(err.requestOptions);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 409:
            throw ConflictException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
        }
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        throw NoInternetConnectionException(err.requestOptions);
    }

    return handler.next(err);
  }

  Future<void> _refreshToken() async {
      final authService = AuthService();
      final storage = await SharedPreferences.getInstance();

      if(storage.containsKey('refreshToken')) {
        final refreshToken = storage.getString('refreshToken') ?? '';
        final rut = storage.getInt('rut') ?? 0;

        final response = await authService.refreshToken(rut.toString(), refreshToken);
        
        if(response.success == true) {
            final items = response.items[0];
            final usuario = Usuario.fromJson(items['usuario']);
            storage.setString('accessToken', items['accessToken']);
            storage.setString('refreshToken', items['refreshToken']);
            storage.setInt('rut', usuario.rut);
        } else {
          await storage.clear();
        }
      }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );

    return dio.request<dynamic>(
      requestOptions.path, 
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options
    );
  }
}





class BadRequestException extends DioError {
  BadRequestException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Invalid request';
  }
}

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Unknown error occurred, please try again later.';
  }
}

class ConflictException extends DioError {
  ConflictException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Conflict occurred';
  }
}

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Access denied';
  }
}

class NotFoundException extends DioError {
  NotFoundException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The requested information could not be found';
  }
}

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'No internet connection detected, please try again.';
  }
}

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The connection has timed out, please try again.';
  }
}