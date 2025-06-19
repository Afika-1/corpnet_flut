import 'package:flutter/material.dart';
import 'register_business_screen.dart';

class IngelosiWelcomeScreen extends StatefulWidget {
  @override
  _IngelosiWelcomeScreenState createState() => _IngelosiWelcomeScreenState();
}

class _IngelosiWelcomeScreenState extends State<IngelosiWelcomeScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 1200),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1A1A1A), // Dark gray/black
              Color(0xFF0D2A2A), // Dark teal
              Color(0xFF0A4A4A), // Medium teal
              Color(0xFF00A693), // Bright teal
            ],
            stops: [0.0, 0.3, 0.7, 1.0],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                SizedBox(height: 60),
                
                // Logo and brand name in top left
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Logo with wings and dollar sign
                      Container(
                        width: 80,
                        height: 80,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            // Wings
                            Positioned(
                              left: 0,
                              child: Icon(
                                Icons.keyboard_double_arrow_left,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Positioned(
                              right: 0,
                              child: Icon(
                                Icons.keyboard_double_arrow_right,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            // Dollar sign
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFD4AF37), // Gold color
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  '\$',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Agrandir',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Ingelosi Imali',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.2,
                          fontFamily: 'Agrandir',
                        ),
                      ),
                    ],
                  ),
                ),
                
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Loading dots
                      Container(
                        height: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildLoadingDot(0),
                            SizedBox(width: 12),
                            _buildLoadingDot(1),
                            SizedBox(width: 12),
                            _buildLoadingDot(2),
                          ],
                        ),
                      ),
                      
                      SizedBox(height: 80),
                      
                      // Main title
                      Text(
                        'Ingelosi Imali',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 64,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 2,
                          fontFamily: 'Agrandir',
                          height: 1.1,
                        ),
                      ),
                      
                      SizedBox(height: 30),
                      
                      // Subtitle
                      Text(
                        'Unlocking Capital. Empowering Small Businesses.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.8,
                          fontFamily: 'Agrandir',
                          height: 1.3,
                        ),
                      ),
                    ],
                  ),
                ),
                
                // Welcome button
                Padding(
                  padding: EdgeInsets.only(bottom: 60),
                  child: Container(
                    width: 220,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to next screen
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BusinessRegistrationScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Color(0xFFD4AF37),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: Color(0xFFD4AF37),
                            width: 2,
                          ),
                        ),
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WELCOME',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2,
                              fontFamily: 'Agrandir',
                            ),
                          ),
                          SizedBox(width: 12),
                          Icon(
                            Icons.arrow_forward,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingDot(int index) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        double delay = index * 0.2;
        double animationValue = (_animation.value + delay) % 1.0;
        
        return Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: Color(0xFF00A693).withOpacity(0.3 + (0.7 * animationValue)),
            shape: BoxShape.circle,
          ),
        );
      },
    );
  }
}

// Placeholder for the next screen - replace with your actual registration screen
// class BusinessRegistrationScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Registration')),
//       body: Center(
//         child: Text(
//           'Business Registration Screen',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }