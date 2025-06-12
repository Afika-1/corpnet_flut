// import 'package:flutter/material.dart';

// class Navbar extends StatelessWidget {
//   const Navbar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Feed'),
//         BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Network'),
//         BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Post'),
//                 BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
//         BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//       ],
//       currentIndex: 0, // Update this based on the current screen
//       onTap: (index) {
//         // Handle navigation
//       },
      
//       selectedItemColor: Color(0xFFDC2626),
//       unselectedItemColor: Colors.white,
//       backgroundColor: Color(0xFFDC0026),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import '../screens/home_screen.dart';
// import '../screens/account_selection.dart';
// import '../screens/network_page.dart';
// import '../screens/post_screen.dart';
// import '../screens/business_page.dart';
// import '../screens/profile_screen.dart';


// class Navbar extends StatefulWidget {
//   const Navbar({super.key});

//   @override
//   _NavbarState createState() => _NavbarState();
// }

// class _NavbarState extends State<Navbar> {
//   int _currentIndex = 0; // Track the current index

//   void _onItemTapped(int index) {
//     setState(() {
//       _currentIndex = index; // Update the current index
//     });

//     // Navigate to the relevant page based on the index
//     switch (index) {
//       case 0:
//         Navigator.pushNamed(context, '/'); // Replace with your feed route
//         break;
//       case 1:
//         Navigator.pushNamed(context, '/network'); // Replace with your network route
//         break;
//       case 2:
//         Navigator.pushNamed(context, '/post'); // Replace with your post route
//         break;
//       case 3:
//         Navigator.pushNamed(context, '/business'); // Replace with your business route
//         break;
//       case 4:
//         Navigator.pushNamed(context, '/profile'); // Replace with your profile route
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: const [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Feed'),
//         BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Network'),
//         BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Post'),
//         BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
//         BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//       ],
//       currentIndex: _currentIndex, // Use the current index
//       onTap: _onItemTapped, // Handle navigation
//       selectedItemColor: const Color(0xFFDC2626),
//       unselectedItemColor: Colors.white,
//       backgroundColor: const Color(0xFF111827), // Set the background color
//     );
//   }
// } 

// navbar.dart (as you've already defined)
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Navigate based on the index
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/network');
        break;
      case 2:
        Navigator.pushNamed(context, '/post');
        break;
      case 3:
        Navigator.pushNamed(context, '/business');
        break;
      case 4:
        Navigator.pushNamed(context, '/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Feed'),
        BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Network'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Post'),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
      selectedItemColor: const Color(0xFFDC2626),
      unselectedItemColor: Colors.white,
      backgroundColor: const Color(0xFF111827),
    );
  }
}