import 'package:flutter/material.dart';
import 'package:restaurant_app/pages/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Apps',
      home: MainScreen(),
    );
  }
}
