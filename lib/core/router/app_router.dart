// core/router/app_router.dart
import 'package:go_router/go_router.dart';
import '../../features/home/presentation/pages/home_page.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomePage()),
      // TODO: باقي الصفحات لما تجهز
      // GoRoute(path: '/about', builder: (context, state) => const AboutPage()),
      // GoRoute(path: '/projects', builder: (context, state) => const ProjectsPage()),
      // GoRoute(path: '/rental', builder: (context, state) => const RentalPage()),
      // GoRoute(path: '/sales', builder: (context, state) => const SalesPage()),
      // GoRoute(path: '/estimator', builder: (context, state) => const EstimatorPage()),
      // GoRoute(path: '/contact', builder: (context, state) => const ContactPage()),
    ],
  );
}