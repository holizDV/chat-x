class PostingEntity {
  final List<DataEntity>? data;
  final int? total;
  final int? page;
  final int? limit;

  PostingEntity({
    this.data,
    this.total,
    this.page,
    this.limit,
  });
}

class DataEntity {
  final String? id;
  final String? image;
  final int? likes;
  final List<String>? tags;
  final String? text;
  final String? publishDate;
  final OwnerEntity? owner;

  DataEntity({
    this.id,
    this.image,
    this.likes,
    this.tags,
    this.text,
    this.publishDate,
    this.owner,
  });
}

class OwnerEntity {
  final String? id;
  final String? title;
  final String? firstName;
  final String? lastName;
  final String? picture;

  OwnerEntity({
    this.id,
    this.title,
    this.firstName,
    this.lastName,
    this.picture,
  });
}
