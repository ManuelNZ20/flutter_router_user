
import 'package:go_router/go_router.dart';
import '../../../presentation/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/theme',
      name: ThemeScreen.name,
      builder: ((context, state) => const ThemeScreen())
    )
  ]
);
