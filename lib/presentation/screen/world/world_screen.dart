import 'package:flutter/material.dart';

class WorldScreen extends StatelessWidget {
  static const String name = 'world_screen';
  const WorldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('World Screen'),
      ),
      body: const Placeholder(),
    );
  }
}