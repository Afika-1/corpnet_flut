// import 'package:corpnet_flut/screens/account_selection.dart';
// import 'package:corpnet_flut/screens/profile_screen.dart';
import 'package:corpnet_flut/screens/account_selection.dart';
import 'package:flutter/material.dart';
import 'dart:async';
// import '../screens/business_page.dart';
// import '../screens/home_screen.dart';
// import '../screens/account_selection.dart';
// import '../screens/profile_screen.dart';
// import '../screens/register_business_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corp Community App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
        scaffoldBackgroundColor: const Color(0xFF0A121D),
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFEF4444), // red-600
          secondary: const Color(0xFF1E2A3A),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.white,
          ),
          titleMedium: TextStyle( // Use titleMedium instead of subtitle1
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Colors.white,
          ),
          titleSmall: TextStyle( // Use titleSmall instead of subtitle2
            fontSize: 12,
            color: Color(0xFF9CA3AF), // gray-400
          ),
          bodyMedium: TextStyle( // Use bodyMedium instead of bodyText2
            fontSize: 14,
            color: Color(0xFF9CA3AF), // gray-400
          ),
          labelLarge: TextStyle( // Use labelLarge instead of button
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
      home: const SplashScreen(), // Use SplashScreen as the initial screen
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        // MaterialPageRoute(builder: (context) => const AccountSelectionScreen()), // Navigate to HomeScreen
        MaterialPageRoute(builder: (context) =>  AccountSelectionScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // const maroon = Color(0xFF7F1D1D); // Maroon color

    return Scaffold(
      // backgroundColor: const Color(0xFF0A121D), 
            backgroundColor: Colors.black, 
      
      body: Center(
        
        child: RichText(
          
          text: TextSpan(
            style: const TextStyle(
              fontFamily: 'Inter',
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
            children: [
              const TextSpan(
                text: 'Corp',
                style: TextStyle(color: Colors.white),
              ),
              TextSpan(
                text: 'Community',
                style: TextStyle(color: Colors.yellow),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

