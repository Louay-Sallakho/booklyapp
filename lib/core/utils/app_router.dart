import 'package:booklyapp/Features/Home/Presentation/Views/book_details_view.dart';
import 'package:booklyapp/Features/Home/Presentation/Views/home_view.dart';
import 'package:booklyapp/Features/splash/presentation/views/splashview.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kBookDetailsView = '/bookDetailsView';
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
       GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      )
    ],
  );
}
