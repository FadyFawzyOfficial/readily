import 'package:go_router/go_router.dart';

import '../../features/home/data/models/book/volume_info.dart';
import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/search/presentation/views/search_view.dart';
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
    GoRoute(
      path: BookDetailsView.name,
      name: BookDetailsView.name,
      builder: (context, state) => BookDetailsView(
        bookInfo: state.extra as VolumeInfo,
      ),
    ),
    GoRoute(
      path: SearchView.name,
      name: SearchView.name,
      builder: (context, state) => const SearchView(),
    ),
  ],
);
