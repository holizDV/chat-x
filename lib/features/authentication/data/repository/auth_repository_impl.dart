import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/error/failures.dart';
import '../../../../config/network/response_exception.dart';
import '../../domain/entity/create_user_entity.dart';
import '../../domain/repository/auth_repository.dart';
import '../datasource/auth_remote_datasource.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.remoteDataSource, this.exception);

  final AuthRemoteDataSource remoteDataSource;
  final ResponseException exception;

  @override
  Future<Either<Failure, CreateUserEntity>> createUser({
    required String firstName,
    required String lastName,
    required String gender,
    required String email,
  }) {
    return exception.exc<CreateUserEntity>(() => remoteDataSource.createUser(
        firstName: firstName,
        lastName: lastName,
        gender: gender,
        email: email));
  }
}
