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
        primaryColor: const Color(0xFF008635),
        primarySwatch: Colors.grey,
        disabledColor:Colors.grey,
        dividerColor:Colors.blue,
        focusColor:Colors.yellow,
        highlightColor:Colors.yellow,
        hintColor:Colors.greenAccent,
        indicatorColor:Colors.white,
        scaffoldBackgroundColor: Colors.white,
        cardColor: const Color(0xff007635),
        textTheme:  const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Color(0xFF007635)),
          titleLarge: TextStyle(color: Colors.white),
        ),
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: const Home(),
      )
    ;
  }
}
