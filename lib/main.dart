import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Garry app',
      theme: ThemeData(
        fontFamily: 'Georgia',
        primarySwatch: Colors.lightGreen,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        ),
      ),
      home: HomePage(),
    );
  }
}