import 'package:corpnet_flut/screens/business_lounge.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/asset/images/businessLounge.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Top Navigation Bar
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Logo Section
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              // Wings
                              Icon(
                                Icons.featured_play_list_outlined,
                                size: 50,
                                color: Colors.white.withValues(alpha:0.8),
                              ),
                              // Dollar sign
                              const Text(
                                '\$',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFD4AF37),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'Ingalozi Mali',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ],
                    ),
                    // Navigation Menu
                    Row(
                      children: [
                        _buildNavItem('Education'),
                        const SizedBox(width: 40),
                        _buildNavItem('About us'),
                        const SizedBox(width: 40),
                        _buildNavItem('Register'),
                        const SizedBox(width: 40),
                        _buildNavItem('Log In'),
                        const SizedBox(width: 30),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Main Content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Main Title
                  const Text(
                    'Ingalozi Mali',
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      letterSpacing: 2.0,
                      height: 1.0,
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Subtitle
                  const Text(
                    'Unlocking Capital. Empowering Small Businesses.',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 60),
                  // Action Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildActionButton(
                        'BUSINESS\nLOUNGE',
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BusinessLoungeScreen(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 40),
                      _buildActionButton(
                        'INVESTORS\nLOUNGE',
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InvestorLoungeScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Decorative Elements
            Positioned(
              top: 100,
              right: -100,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Colors.white.withValues(alpha:0.05),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -150,
              left: -150,
              child: Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Colors.white.withValues(alpha:0.03),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String text) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: Colors.white.withValues(alpha:0.9),
          letterSpacing: 0.5,
        ),
      ),
    );
  }

  Widget _buildActionButton(String text, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color(0xFFD4AF37),
          width: 1.5,
        ),
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            const Color(0xFFD4AF37).withValues(alpha:0.1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 20,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFD4AF37),
                    letterSpacing: 1.5,
                    height: 1.3,
                  ),
                ),
                const SizedBox(width: 15),
                const Icon(
                  Icons.arrow_forward,
                  color: Color(0xFFD4AF37),
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Main App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ingalozi Mali',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SF Pro Display',
      ),
      home: const LandingPage(),
    );
  }
}

void main() {
  runApp(const MyApp());
}

// Placeholder screens for navigation


class InvestorLoungeScreen extends StatelessWidget {
  const InvestorLoungeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Investor Lounge'),
        backgroundColor: const Color(0xFF2D4A5A),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Investor Lounge Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}