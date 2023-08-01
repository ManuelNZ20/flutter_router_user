import 'package:flutter/material.dart';

class CvScreen extends StatelessWidget {
  static const String name = 'cv_screen';
  const CvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CV Screen'),
      ),
      body: const Placeholder(),
    );
  }
}