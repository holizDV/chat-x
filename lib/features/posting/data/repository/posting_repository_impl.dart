import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/error/failures.dart';
import '../../../../config/network/response_exception.dart';
import '../../domain/entity/posting_entity.dart';
import '../../domain/repository/posting_repository.dart';
import '../datasource/posting_remote_datasource.dart';

@LazySingleton(as: PostingRepository)
class PostingRepositoryImpl implements PostingRepository {
  PostingRepositoryImpl(this.remoteDataSource, this.exception);

  final PostingRemoteDataSource remoteDataSource;
  final ResponseException exception;

  @override
  Future<Either<Failure, PostingEntity>> posting({
    required int page,
    required int limit,
  }) {
    return exception.exc<PostingEntity>(
        () => remoteDataSource.posting(page: page, limit: limit));
  }
}
