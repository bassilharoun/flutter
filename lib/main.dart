import 'package:flutter/material.dart';
import 'package:untitled1/home_screen.dart';

void main() {
  runApp(MyApp());
}
// every thing is a widget
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

