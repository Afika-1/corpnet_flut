import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(CorpNetApp());
}

class CorpNetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CorpNet',
      theme: ThemeData(
        primaryColor: Color(0xFFDC2626),
        accentColor: Color(0xFF7F1D1D),
        scaffoldBackgroundColor: Color(0xFF111827),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: LoginScreen(),
    );
  }
}