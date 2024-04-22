import 'package:dartz/dartz.dart';

import '../../../../config/error/failures.dart';
import '../entity/posting_entity.dart';

abstract class PostingRepository {
  Future<Either<Failure, PostingEntity>> posting({
    required int page,
    required int limit,
  });
}
