import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/env/build_config.dart';
import '../config/router/router.dart';
import '../config/theme/app_responsive.dart';
import '../config/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final appRouter = AppRouter();
  final responsive = AppResponsive.instance;

  @override
  Widget build(BuildContext context) {
    //! Don't remove this, this is for setting up responsive design
    responsive.initResponsive(context);

    return ScreenUtilInit(
      designSize: const Size(360, 710),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        if (BuildConfig.isDebugLayout()) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: "Chat-X Layout",
            routerDelegate: appRouter.delegate(),
            routeInformationParser: appRouter.defaultRouteParser(),
            builder: DevicePreview.appBuilder,
            locale: DevicePreview.locale(context),
            theme: getApplicationTheme(),
          );
        } else {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: "Chat-X",
            routerDelegate: appRouter.delegate(),
            routeInformationParser: appRouter.defaultRouteParser(),
            theme: getApplicationTheme(),
          );
        }
      },
    );
  }
}
