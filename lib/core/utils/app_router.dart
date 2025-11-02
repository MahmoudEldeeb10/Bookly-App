import 'package:bookly/features/home/presentaion/views/book_details_view.dart';
import 'package:bookly/features/home/presentaion/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

// abstract because i will not craete copies from it
abstract class AppRouter {
  static const KHomeView = '/homeView';
  static const KBookDetailsView = '/searchView';
  static const KSearchView = '/bookDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: KHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
