import 'package:flutter/material.dart';
import 'Page/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue,
        accentColor: Colors.cyan,
      ),
      home: Home(),
    );
  }
}
