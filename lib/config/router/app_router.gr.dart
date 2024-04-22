// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:chat_x/features/authentication/presentation/page/login_page.dart'
    as _i3;
import 'package:chat_x/features/home/presentation/page/detail_user_page.dart'
    as _i1;
import 'package:chat_x/features/onboarding/presentation/page/init_page.dart'
    as _i2;
import 'package:chat_x/features/onboarding/presentation/page/onboarding_page.dart'
    as _i4;
import 'package:chat_x/features/root/presentation/page/root_page.dart' as _i5;
import 'package:flutter/material.dart' as _i7;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    DetailUserRoute.name: (routeData) {
      final args = routeData.argsAs<DetailUserRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DetailUserPage(
          key: args.key,
          userID: args.userID,
        ),
      );
    },
    InitRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.InitPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.LoginPage(key: args.key),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.OnboardingPage(),
      );
    },
    RootRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.RootPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DetailUserPage]
class DetailUserRoute extends _i6.PageRouteInfo<DetailUserRouteArgs> {
  DetailUserRoute({
    _i7.Key? key,
    required String userID,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          DetailUserRoute.name,
          args: DetailUserRouteArgs(
            key: key,
            userID: userID,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailUserRoute';

  static const _i6.PageInfo<DetailUserRouteArgs> page =
      _i6.PageInfo<DetailUserRouteArgs>(name);
}

class DetailUserRouteArgs {
  const DetailUserRouteArgs({
    this.key,
    required this.userID,
  });

  final _i7.Key? key;

  final String userID;

  @override
  String toString() {
    return 'DetailUserRouteArgs{key: $key, userID: $userID}';
  }
}

/// generated route for
/// [_i2.InitPage]
class InitRoute extends _i6.PageRouteInfo<void> {
  const InitRoute({List<_i6.PageRouteInfo>? children})
      : super(
          InitRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<LoginRouteArgs> page =
      _i6.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.OnboardingPage]
class OnboardingRoute extends _i6.PageRouteInfo<void> {
  const OnboardingRoute({List<_i6.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RootPage]
class RootRoute extends _i6.PageRouteInfo<void> {
  const RootRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RootRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
