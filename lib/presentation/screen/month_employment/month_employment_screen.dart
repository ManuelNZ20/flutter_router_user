import 'package:flutter/material.dart';

class MonthScreen extends StatelessWidget {
  static const String name = 'month_employment_screen';
  const MonthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Month Employment Screen'),
      ),
      body: const Placeholder(),
    );
  }
}