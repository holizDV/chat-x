class UserDetailEntity {
  final String? id;
  final String? title;
  final String? firstName;
  final String? lastName;
  final String? picture;
  final String? gender;
  final String? email;
  final String? dateOfBirth;
  final String? phone;
  final LocationEntity? location;
  final String? registerDate;
  final String? updatedDate;

  UserDetailEntity({
    this.id,
    this.title,
    this.firstName,
    this.lastName,
    this.picture,
    this.gender,
    this.email,
    this.dateOfBirth,
    this.phone,
    this.location,
    this.registerDate,
    this.updatedDate,
  });
}

class LocationEntity {
  final String? street;
  final String? city;
  final String? state;
  final String? country;
  final String? timezone;

  LocationEntity({
    this.street,
    this.city,
    this.state,
    this.country,
    this.timezone,
  });
}
