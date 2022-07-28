import 'dart:io';

import 'package:dio/dio.dart';

import '../models/response_api.dart';
import '../utils/api.dart';

class AuthService {
  
  final Api _api = Api();

  Future<ResponseApi> login(String usuario, String password) async {
    final response = await _api.simpleDio.post(
      '/api/auth/login', 
      data: {'usuario': usuario, 'password': password}, 
    );

    final responseApi = ResponseApi.fromJson(response.data);
    return responseApi;
  }


  Future<ResponseApi> validarClaveSecreta(String usuario, int rut, String clave) async {
    final response = await _api.simpleDio.post(
      '/api/auth/validarClaveSecreta', 
      data: {'rut': rut, 'clave': clave, 'usuario': usuario}, 
    );

    print(response);

    final responseApi = ResponseApi.fromJson(response.data);
    return responseApi;
  }

  Future<ResponseApi> refreshToken(String usuario, String refreshToken) async {
    final response = await _api.simpleDio.post(
      '/api/auth/refreshToken', 
      data: {'usuario': usuario, 'refreshToken': refreshToken}, 
    );

    final responseApi = ResponseApi.fromJson(response.data);
    return responseApi;
  }
}