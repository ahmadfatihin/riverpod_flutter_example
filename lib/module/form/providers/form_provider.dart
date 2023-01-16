import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/module/form/models/form_name_model.dart';

class FormNotifier extends StateNotifier<FormName> {
  FormNotifier() : super(const FormName(name: 'Name not filled', age: 0)) {
    changeAge();
  }

  void changeName(String name) => state = state.copyWith(name: name);
  void changeAge() => state = state.copyWith(age: state.age + 1);
}

final formProvider = StateNotifierProvider<FormNotifier, FormName>((ref) {
  return FormNotifier();
});
