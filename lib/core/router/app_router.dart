import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Define routes here, exposed as a provider so you can use ref inside
/// redirect logic later if needed.
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      // GoRoute(path: '/', builder: (context, state) => const HomePage()),
    ],
  );
});
