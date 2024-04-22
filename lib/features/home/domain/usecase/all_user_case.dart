import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/error/failures.dart';
import '../../../../config/usecase/usecase.dart';
import '../entity/all_user_entity.dart';
import '../repository/home_repository.dart';

@lazySingleton
class AllUserCase implements UseCase<AllUserEntity, Params> {
  AllUserCase(this.repository);

  final HomeRepository repository;

  @override
  Future<Either<Failure, AllUserEntity>> execute(Params params) async {
    return await repository.allUser(
      page: params.page,
      limit: params.limit,
    );
  }
}

class Params extends Equatable {
  final int page;
  final int limit;

  const Params({
    required this.page,
    required this.limit,
  });

  @override
  List<Object> get props => [page, limit];
}
