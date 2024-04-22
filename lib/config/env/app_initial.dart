import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/injection/injection.dart';
import '../network/app_info.dart';
import '../network/app_network.dart';
import 'build_config.dart';

abstract class AppInitial {
  AppInitial() {
    _init();
  }

  FutureOr<StatelessWidget> onCreate();

  Future<void> _init() async {
    await runZonedGuarded(() async {
      try {
        await _initializeApp();
        await configureInjection();
        await _configureSystemChrome();

        var app = await onCreate();

        _runApp(app);
      } catch (error, _) {
        rethrow;
      }
    }, (error, stack) {
      _handleInitializationError(error, stack);
    });
  }

  Future<void> _initializeApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await AppInfo.instance.init();

    final flavor = await _getFlavor();
    BuildConfig.init(flavor);

    await AppNetwork().initEnv();
  }

  Future<String?> _getFlavor() async {
    try {
      return await const MethodChannel("flavor")
          .invokeMethod<String>("getFlavor");
    } catch (error) {
      debugPrint("Cannot get flavor");
      debugPrint(error.toString());
      rethrow;
    }
  }

  Future<void> _configureSystemChrome() async {
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  void _runApp(StatelessWidget app) {
    if (BuildConfig.isDebugLayout()) {
      runApp(DevicePreview(
        enabled: !kReleaseMode,
        builder: (_) => app,
      ));
    } else {
      runApp(app);
    }
  }

  void _handleInitializationError(dynamic error, StackTrace stack) {
    debugPrint("$error: $stack");
  }
}
