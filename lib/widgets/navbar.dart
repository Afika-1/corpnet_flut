import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Feed'),
        BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Network'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Post'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      currentIndex: 0, // Update this based on the current screen
      onTap: (index) {
        // Handle navigation
      },
      backgroundColor: Color(0xFF1F2937),
      selectedItemColor: Color(0xFFDC2626),
      unselectedItemColor: Colors.white,
    );
  }
}