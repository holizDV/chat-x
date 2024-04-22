import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/create_user_entity.dart';

part 'create_user_model.freezed.dart';
part 'create_user_model.g.dart';

@freezed
class CreateUserModel extends CreateUserEntity with _$CreateUserModel {
  const factory CreateUserModel({
    String? id,
    String? firstName,
    String? lastName,
    String? gender,
    String? email,
    String? registerDate,
    String? updatedDate,
  }) = _CreateUserModel;

  factory CreateUserModel.fromJson(Map<String, dynamic> json) =>
      _$CreateUserModelFromJson(json);
}
