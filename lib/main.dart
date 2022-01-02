import 'package:flutter/material.dart';
import 'package:mood_tracker/HomePage.dart';
import 'package:mood_tracker/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class Strings {
  static const String appTitle = 'Mood tracker';
}