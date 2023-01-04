import 'package:flutter_riverpod/flutter_riverpod.dart';

///StateProvider Example
final counterProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});
