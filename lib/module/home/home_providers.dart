import 'package:flutter_riverpod/flutter_riverpod.dart';

///Provider Example
final nameProvider = Provider<String>((ref) {
  return 'Johny Kim';
});

final greetingProvider = Provider<String>((ref) {
  return 'Hi, ${ref.watch(nameProvider)}';
});
