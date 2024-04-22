import 'package:package_info_plus/package_info_plus.dart';

class AppInfo {
  AppInfo._internal();
  static AppInfo instance = AppInfo._internal();
  factory AppInfo() => instance;

  late String _platform;
  late String _platformVersion;
  late String _deviceName;
  late String _appName;

  Future<void> init() async {
    await _getAppName();
  }

  Future<String> _getAppName() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return _appName = packageInfo.appName;
  }

  String get platform => _platform;
  String get platformVersion => _platformVersion;
  String get deviceName => _deviceName;
  String get appName => _appName;
}
