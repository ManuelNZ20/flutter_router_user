import 'package:flutter/material.dart';

class SuscriptionScreen extends StatelessWidget {
  static const String name = 'suscription_screen';
  const SuscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suscription Screen'),
      ),
      body: const Placeholder(),
    );
  }
}