import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/error/failures.dart';
import '../../../../config/usecase/usecase.dart';
import '../entity/user_detail_entity.dart';
import '../repository/home_repository.dart';

@lazySingleton
class UserDetailCase implements UseCase<UserDetailEntity, Params> {
  UserDetailCase(this.repository);

  final HomeRepository repository;

  @override
  Future<Either<Failure, UserDetailEntity>> execute(Params params) async {
    return await repository.detailUser(params.userID);
  }
}

class Params extends Equatable {
  final String userID;

  const Params(this.userID);

  @override
  List<Object> get props => [userID];
}
