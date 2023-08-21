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
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
            primary: Color(0xFF007635),
            onPrimary: Colors.blue,
            secondary: Colors.blue,
            onSecondary: Color(0xFF007635),
            error: Colors.red,
            onError: Colors.white,
            background: Colors.white,
            onBackground: Color(0xFF007635),
            surface: Color(0xFF007635),
            onSurface: Colors.blue,
        ),
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
