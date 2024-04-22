import 'package:dartz/dartz.dart';

import '../../../../config/error/failures.dart';
import '../entity/create_user_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, CreateUserEntity>> createUser({
    required String firstName,
    required String lastName,
    required String gender,
    required String email,
  });
}
