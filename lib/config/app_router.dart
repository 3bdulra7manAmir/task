import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/widgets/circular_indicator.dart';
import '../features/home/presentation/views/home_view.dart';
import '../features/onboarding/view/splash.dart';
import 'app_routes.dart';


abstract class AppRouter
{
  AppRouter._();
  static final navigatorState = GlobalKey<NavigatorState>(debugLabel: 'root');
  static final router = GoRouter(
    navigatorKey: navigatorState,
    debugLogDiagnostics: kDebugMode,
    initialLocation: AppRoutes.splash,
    errorBuilder: (_, _) => const Scaffold(body: CustomLoadingIndicator(),),
    routes: [
      /// [ OnBoarding ]
      // [Splash]
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (_, _) => const Splash(),
      ),

      /// [Home]
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        builder: (_, _) => const Home(),
      ),
    ]
  );
}
