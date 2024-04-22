import '../env/env.dart';
import 'app_network.dart';

class ApiEndpoint {
  final String _version;

  ApiEndpoint._(this._version);

  final _baseUrl = AppNetwork().baseUrl;

  factory ApiEndpoint.v1() {
    return ApiEndpoint._('/v1');
  }

  String _buildEndpoint({required String path, required String endpoint}) {
    return "$_baseUrl$_version$path$endpoint";
  }

  String get user => _buildEndpoint(
        path: PathEnvironment.get().user,
        endpoint: "",
      );

  String get createUser => _buildEndpoint(
        path: PathEnvironment.get().user,
        endpoint: "/create",
      );
  String get posting => _buildEndpoint(
        path: PathEnvironment.get().post,
        endpoint: "",
      );
}
