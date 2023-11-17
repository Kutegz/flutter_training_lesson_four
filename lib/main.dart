import 'package:flutter/material.dart';
import 'package:lesson_four/home_page.dart';

void main() => runApp(const App());

final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const HomePage(
        title: 'Home',
      ),
    );
  }
}
