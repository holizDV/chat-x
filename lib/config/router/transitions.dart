import 'package:auto_route/auto_route.dart';

class TransitionRoute extends CustomRoute {
  TransitionRoute({
    required super.page,
    super.initial,
    super.path,
  }) : super(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 200,
          reverseDurationInMilliseconds: 150,
        );
}
