import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/error/failures.dart';
import '../../../../config/network/response_exception.dart';
import '../../domain/entity/all_user_entity.dart';
import '../../domain/entity/user_detail_entity.dart';
import '../../domain/repository/home_repository.dart';
import '../datasource/home_remote_datasource.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this.remoteDataSource, this.exception);

  final HomeRemoteDataSource remoteDataSource;
  final ResponseException exception;

  @override
  Future<Either<Failure, AllUserEntity>> allUser({
    required int page,
    required int limit,
  }) {
    return exception.exc<AllUserEntity>(
        () => remoteDataSource.allUser(page: page, limit: limit));
  }

  @override
  Future<Either<Failure, UserDetailEntity>> detailUser(String userID) {
    return exception
        .exc<UserDetailEntity>(() => remoteDataSource.detailUser(userID));
  }
}
