import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_name_model.freezed.dart';
part 'form_name_model.g.dart';

@freezed
class FormName with _$FormName {
  const factory FormName({required String name, required int age}) = _FormName;

  factory FormName.fromJson(Map<String, dynamic> json) =>
      _$FormNameFromJson(json);
}
