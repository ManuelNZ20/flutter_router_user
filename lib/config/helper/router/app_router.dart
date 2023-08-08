import 'package:go_router/go_router.dart';
import '../../../presentation/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
  ),
  // GoRoute(
  //     path: '/theme',
  //     name: ThemeScreen.name,
  //     builder: ((context, state) => const ThemeScreen())),
  GoRoute(
    path: '/monthemployment',
    name: MonthScreen.name,
    builder: (context, state) => const MonthScreen(),
  ),
  GoRoute(
      path: '/cv',
      name: CvScreen.name,
      builder: (context, state) => const CvScreen()),
  GoRoute(
      path: '/suscription',
      name: SuscriptionScreen.name,
      builder: (context, state) => const SuscriptionScreen()),
  GoRoute(
      path: '/message',
      name: MessageScreen.name,
      builder: (context, state) => const MessageScreen()),
  GoRoute(
      path: '/world',
      name: WorldScreen.name,
      builder: (context, state) => const WorldScreen())
]);
