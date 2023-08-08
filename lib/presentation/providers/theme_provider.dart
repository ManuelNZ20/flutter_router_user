import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:router_basic_app/config/theme/app_theme.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier,AppTheme>(
  (ref)=>ThemeNotifier()
);


class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier():super(AppTheme());

  void toggleChangeTheme() {  
    state = state.copyWith(
      isDarkMode: !state.isDarkMode
    );
  }

}

