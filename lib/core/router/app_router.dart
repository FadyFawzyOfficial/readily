import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: SplashView.name,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: HomeView.name,
      name: HomeView.name,
      builder: (context, state) => const HomeView(),
    ),
  ],
);
