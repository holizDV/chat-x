import 'package:injectable/injectable.dart';

import '../../../../config/network/network.dart';
import '../model/all_user_model.dart';
import '../model/user_detail_model.dart';

abstract class HomeRemoteDataSource {
  Future<AllUserModel> allUser({
    required int page,
    required int limit,
  });
  Future<UserDetailModel> detailUser(String userID);
}

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl(this.client);

  final ApiClient client;

  final _apiV1 = ApiEndpoint.v1();

  @override
  Future<AllUserModel> allUser({
    required int page,
    required int limit,
  }) async {
    Map<String, dynamic> params = {
      'page': page,
      'limit': limit,
    };

    final response = await client.get(url: _apiV1.user, params: params);
    if (response == null) return response;
    return AllUserModel.fromJson(response);
  }

  @override
  Future<UserDetailModel> detailUser(String userID) async {
    final response = await client.get(url: "${_apiV1.user}/$userID");
    if (response == null) return response;
    return UserDetailModel.fromJson(response);
  }
}
