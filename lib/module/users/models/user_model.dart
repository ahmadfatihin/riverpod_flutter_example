// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UserModel extends Equatable {
  final int id;
  @JsonKey(disallowNullValue: true, defaultValue: '')
  String email;
  String? firstName;
  String? lastName;
  @JsonKey(disallowNullValue: true, defaultValue: '')
  String avatar;
  UserModel({
    required this.id,
    required this.email,
    this.firstName,
    this.lastName,
    required this.avatar,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  List<Object?> get props => [id, email, firstName, lastName, avatar];
}


// Response API of this
// {
//  "UserModel": {
//         "id": 2,
//         "email": "janet.weaver@reqres.in",
//         "first_name": "Janet",
//         "last_name": "Weaver",
//         "avatar": "https://reqres.in/img/faces/2-image.jpg"
//     },
// }
