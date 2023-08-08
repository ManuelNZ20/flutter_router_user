
import 'package:flutter/material.dart';

final customColors = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.cyan.shade700
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;
  AppTheme({
    this.selectedColor = 0,
    this.isDarkMode = true
    }):assert(selectedColor>=0,'Selected color must be greater than 0'),assert(selectedColor<customColors.length,'Selected color must be less than or equal to ${customColors.length-1}');

  ThemeData themeData() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: customColors[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: true
    ),
    brightness: isDarkMode?Brightness.light:Brightness.dark
  );

  AppTheme copyWith({int? selectedColor,bool? isDarkMode}) 
  => AppTheme(
    selectedColor: selectedColor ?? this.selectedColor,
    isDarkMode: isDarkMode??this.isDarkMode
  );
}