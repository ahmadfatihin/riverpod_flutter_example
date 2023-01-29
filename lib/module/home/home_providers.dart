import 'package:flutter_riverpod/flutter_riverpod.dart';

///Provider Example
final nameProvider = Provider<String>((ref) {
  return 'State Management Tutorial';
});

final greetingProvider = Provider<String>((ref) {
  return 'Riverpod ${ref.watch(nameProvider)}';
});

final creatorProvider = Provider<String>((ref) {
  return 'Ahmad Fatihin (2023) \n github.com/ahmadfatihin';
});
