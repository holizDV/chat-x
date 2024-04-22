import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/error/failures.dart';
import '../../../../config/usecase/usecase.dart';
import '../entity/posting_entity.dart';
import '../repository/posting_repository.dart';

@lazySingleton
class AllPostingCase implements UseCase<PostingEntity, Params> {
  AllPostingCase(this.repository);

  final PostingRepository repository;

  @override
  Future<Either<Failure, PostingEntity>> execute(Params params) async {
    return await repository.posting(
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
