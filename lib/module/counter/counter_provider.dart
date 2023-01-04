import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});
