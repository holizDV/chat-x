import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/user_detail_entity.dart';

part 'user_detail_model.freezed.dart';
part 'user_detail_model.g.dart';

@freezed
class UserDetailModel extends UserDetailEntity with _$UserDetailModel {
  const factory UserDetailModel({
    String? id,
    String? title,
    String? firstName,
    String? lastName,
    String? picture,
    String? gender,
    String? email,
    String? dateOfBirth,
    String? phone,
    Location? location,
    String? registerDate,
    String? updatedDate,
  }) = _UserDetailModel;

  factory UserDetailModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailModelFromJson(json);
}

@freezed
class Location extends LocationEntity with _$Location {
  const factory Location({
    String? street,
    String? city,
    String? state,
    String? country,
    String? timezone,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
