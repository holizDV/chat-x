import 'package:chat_x/features/home/domain/entity/user_detail_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../config/error/failures.dart';
import '../entity/all_user_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, AllUserEntity>> allUser({
    required int page,
    required int limit,
  });
  Future<Either<Failure, UserDetailEntity>> detailUser(String userID);
}
