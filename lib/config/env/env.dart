import 'package:envied/envied.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'env.g.dart';

@Envied(path: ".dev.env", obfuscate: true)
abstract class DevEnv {
  @EnviedField(varName: 'BASE_URL')
  static String baseUrl = _DevEnv.baseUrl;
  @EnviedField(varName: 'PATH_USER')
  static String pathUser = _DevEnv.pathUser;
  @EnviedField(varName: 'PATH_POST')
  static String pathPost = _DevEnv.pathPost;
}

@Envied(path: ".prod.env", obfuscate: true)
abstract class ProdEnv {
  @EnviedField(varName: 'BASE_URL')
  static String baseUrl = _ProdEnv.baseUrl;
  @EnviedField(varName: 'PATH_USER')
  static String pathUser = _ProdEnv.pathUser;
  @EnviedField(varName: 'PATH_POST')
  static String pathPost = _ProdEnv.pathPost;
}

enum EnvironmentType { dev, prod }

class AppEnvironment {
  AppEnvironment._();
  static AppEnvironment get instance => AppEnvironment._();

  Future<EnvironmentType> getCurrentEnv() async {
    final packageInfo = await PackageInfo.fromPlatform();
    switch (packageInfo.packageName) {
      case "com.debmind.chat_x.dev":
        return EnvironmentType.dev;
      default:
        return EnvironmentType.prod;
    }
  }

  Future<String> getBaseUrlBasedOnEnv() async {
    final currentEnv = await getCurrentEnv();
    await PathEnvironment.init(currentEnv);

    if (currentEnv == EnvironmentType.dev) {
      return Future.value(DevEnv.baseUrl);
    } else {
      return Future.value(ProdEnv.baseUrl);
    }
  }
}

class PathEnvironment {
  final String user;
  final String post;

  PathEnvironment._({
    required this.user,
    required this.post,
  });

  PathEnvironment._dev(EnvironmentType currentEnv)
      : this._(
          user: DevEnv.pathUser,
          post: DevEnv.pathPost,
        );

  PathEnvironment._prod(EnvironmentType currentEnv)
      : this._(
          user: ProdEnv.pathUser,
          post: ProdEnv.pathPost,
        );

  static late PathEnvironment _instance;
  static PathEnvironment get() => _instance;

  static Future<void> init(EnvironmentType currentEnv) async {
    switch (currentEnv) {
      case EnvironmentType.dev:
        _instance = PathEnvironment._dev(currentEnv);
        break;
      default:
        _instance = PathEnvironment._prod(currentEnv);
    }
  }
}
