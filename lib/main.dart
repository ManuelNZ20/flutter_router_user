import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:router_basic_app/config/helper/router/app_router.dart';
import 'package:router_basic_app/presentation/providers/theme_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp()
    )
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final appTheme = ref.watch(themeProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: appTheme.themeData(),
      routerConfig: appRouter,
    );
  }
}
