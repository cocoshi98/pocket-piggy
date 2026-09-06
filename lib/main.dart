import 'package:flutter/material.dart';

void main() {
  runApp(const PocketPiggyApp());
}

class PocketPiggyApp extends StatelessWidget {
  const PocketPiggyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pocket Piggy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pocket Piggy'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Pocket Piggy!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}