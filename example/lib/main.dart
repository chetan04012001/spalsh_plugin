import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Plugin',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashExample(),
    );
  }
}

class SplashExample extends StatefulWidget {
  const SplashExample({super.key});

  @override
  State<SplashExample> createState() => _SplashExampleState();
}

class _SplashExampleState extends State<SplashExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}


