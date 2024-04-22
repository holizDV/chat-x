class AllUserEntity {
  final List<DataEntity>? data;
  final int? total;
  final int? page;
  final int? limit;

  AllUserEntity({
    this.data,
    this.total,
    this.page,
    this.limit,
  });
}

class DataEntity {
  final String? id;
  final String? title;
  final String? firstName;
  final String? lastName;
  final String? picture;

  DataEntity({
    this.id,
    this.title,
    this.firstName,
    this.lastName,
    this.picture,
  });
}
