import 'package:flutter/material.dart';
import 'home_page.dart';
import 'home_page2.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Форма регистрации',
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomePage(),
        'home2': (context) => const HomePage2(),
      },
    );
  }
}
