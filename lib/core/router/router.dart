import 'package:auto_route/auto_route.dart';
import 'package:mvvm_arch/core/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AdaptiveRoute(
          page: LoginRoute.page,
          path: '/login',
        ),
        AdaptiveRoute(
          page: HomeRoute.page,
          path: '/home',
        ),
        AdaptiveRoute(page: SignupRoute.page, path: '/signup'),
        AdaptiveRoute(
          page: ProfileRoute.page,
          path: '/profile',
        ),
        AdaptiveRoute(page: SplashRoute.page, path: '/splash', initial: true),
      ];
}
