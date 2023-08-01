import 'package:flutter/material.dart';

class ThemeScreen extends StatelessWidget {
  static const String name = 'theme_screen';
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Screen'),
      ),
      body: Placeholder(),
    );
  }
}