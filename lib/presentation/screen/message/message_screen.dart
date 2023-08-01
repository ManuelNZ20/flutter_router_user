import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  static const String name = 'message_screen';
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message Screen'),
      ),
      body: const Placeholder(),
    );
  }
}