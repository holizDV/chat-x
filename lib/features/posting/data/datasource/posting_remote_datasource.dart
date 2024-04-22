import 'package:injectable/injectable.dart';

import '../../../../config/network/network.dart';
import '../model/posting_model.dart';

abstract class PostingRemoteDataSource {
  Future<PostingModel> posting({
    required int page,
    required int limit,
  });
}

@LazySingleton(as: PostingRemoteDataSource)
class PostingRemoteDataSourceImpl implements PostingRemoteDataSource {
  PostingRemoteDataSourceImpl(this.client);

  final ApiClient client;

  final _apiV1 = ApiEndpoint.v1();

  @override
  Future<PostingModel> posting({
    required int page,
    required int limit,
  }) async {
    Map<String, dynamic> params = {
      'page': page,
      'limit': limit,
    };

    final response = await client.get(url: _apiV1.posting, params: params);
    if (response == null) return response;
    return PostingModel.fromJson(response);
  }
}
