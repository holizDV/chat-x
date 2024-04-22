import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/all_user_entity.dart';

part 'all_user_model.freezed.dart';
part 'all_user_model.g.dart';

@freezed
class AllUserModel extends AllUserEntity with _$AllUserModel {
  const factory AllUserModel({
    List<Data>? data,
    int? total,
    int? page,
    int? limit,
  }) = _AllUserModel;

  factory AllUserModel.fromJson(Map<String, dynamic> json) =>
      _$AllUserModelFromJson(json);
}

@freezed
class Data extends DataEntity with _$Data {
  const factory Data({
    String? id,
    String? title,
    String? firstName,
    String? lastName,
    String? picture,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
