import 'package:flutter/material.dart';
import 'package:masjid/View/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF007635),
        primarySwatch: Colors.green,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Color(0xFF007635))
        ),
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
