import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

@lazySingleton
class AppVersion {
  AppVersion(this.packageInfo);
  final PackageInfo packageInfo;

  String get currentVersion {
    final major = _getLocalVersion[0];
    final minor = _getLocalVersion[1];
    final patch = _getLocalVersion[2];

    return "$major.$minor.$patch";
  }

  List<String> get _getLocalVersion =>
      packageInfo.version.split("-").first.split(".");

  String get packageName => packageInfo.packageName;
}

@module
abstract class PackageInfoModul {
  @preResolve
  Future<PackageInfo> get instance async {
    final info = await PackageInfo.fromPlatform();
    return info;
  }
}
