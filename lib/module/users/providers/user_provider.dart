import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/module/users/models/user_model.dart';

import '../repositories/user_repository.dart';

var userRepositoryProvider = Provider(
  (ref) => UserRepository(),
);
var userProvider = FutureProvider<UserModel?>((ref) {
  return ref.watch(userRepositoryProvider).getUser(Random().nextInt(15) + 1);
});
