import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/error/failures.dart';
import '../../../../config/usecase/usecase.dart';
import '../entity/create_user_entity.dart';
import '../repository/auth_repository.dart';

@lazySingleton
class CreateUserCase implements UseCase<CreateUserEntity, Params> {
  CreateUserCase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<Failure, CreateUserEntity>> execute(Params params) async {
    return await repository.createUser(
      firstName: params.firstName,
      lastName: params.lastName,
      gender: params.gender,
      email: params.email,
    );
  }
}

class Params extends Equatable {
  final String firstName;
  final String lastName;
  final String gender;
  final String email;

  const Params({
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.email,
  });

  @override
  List<Object> get props => [firstName, lastName, gender, email];
}
