import 'package:injectable/injectable.dart';

import '../../../../config/network/network.dart';
import '../model/create_user_model.dart';

abstract class AuthRemoteDataSource {
  Future<CreateUserModel> createUser({
    required String firstName,
    required String lastName,
    required String gender,
    required String email,
  });
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this.client);

  final ApiClient client;

  final _apiV1 = ApiEndpoint.v1();

  @override
  Future<CreateUserModel> createUser({
    required String firstName,
    required String lastName,
    required String gender,
    required String email,
  }) async {
    Map<String, dynamic> body = {
      'fisrtName': firstName,
      'lastName': lastName,
      'gender': gender,
      'email': email,
    };

    final response = await client.post(url: _apiV1.createUser, body: body);
    if (response == null) return response;
    return CreateUserModel.fromJson(response);
  }
}
