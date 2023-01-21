import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_demo/module/users/models/user_model.dart';

class UserRepository {
  final Dio? _dio;

  UserRepository({Dio? dio}) : _dio = dio;

  Future<UserModel?> getUser(int id) async {
    log('Ambil data user');

    await Future.delayed(const Duration(seconds: 2));

    try {
      var response =
          await (_dio ?? Dio()).get('https://reqres.in/api/users/$id');

      log('Kembalikan data user');
      return UserModel.fromJson(response.data['data']);
    } catch (e) {
      return null;
    }
  }
}
