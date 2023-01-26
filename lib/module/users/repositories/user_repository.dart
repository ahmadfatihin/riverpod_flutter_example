import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_demo/module/users/models/user_model.dart';

class UserRepository {
  final Dio? _dio;

  UserRepository({Dio? dio}) : _dio = dio;

  Future<UserModel?> getUser(int id) async {
    // log('Ambil data user');
    // log(id.toString());

    var dio = Dio();
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
    ));

    await Future.delayed(const Duration(seconds: 1));

    var response = await dio.get('https://reqres.in/api/users/$id');

    log(response.data.toString());

    // log('Kembalikan data user');
    return UserModel.fromJson(response.data['data']);
  }
}
