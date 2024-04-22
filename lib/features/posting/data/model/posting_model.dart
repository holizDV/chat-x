import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/posting_entity.dart';

part 'posting_model.freezed.dart';
part 'posting_model.g.dart';

@freezed
class PostingModel extends PostingEntity with _$PostingModel {
  const factory PostingModel({
    List<Data>? data,
    int? total,
    int? page,
    int? limit,
  }) = _PostingModel;

  factory PostingModel.fromJson(Map<String, dynamic> json) =>
      _$PostingModelFromJson(json);
}

@freezed
class Data extends DataEntity with _$Data {
  const factory Data({
    String? id,
    String? image,
    int? likes,
    List<String>? tags,
    String? text,
    String? publishDate,
    Owner? owner,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Owner extends OwnerEntity with _$Owner {
  const factory Owner({
    String? id,
    String? title,
    String? firstName,
    String? lastName,
    String? picture,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
