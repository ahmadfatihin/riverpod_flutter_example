import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider<String>((ref) {
  return 'Johny Kim';
});

final greetingProvider = Provider<String>((ref) {
  return 'Hi, ${ref.watch(nameProvider)}';
});
