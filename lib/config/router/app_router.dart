import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';
import 'transitions.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: InitRoute.page,
          initial: true,
        ),
        AutoRoute(page: OnboardingRoute.page),
        TransitionRoute(page: LoginRoute.page),
        TransitionRoute(page: RootRoute.page),
        TransitionRoute(page: DetailUserRoute.page),
      ];
}
