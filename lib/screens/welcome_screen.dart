import 'package:flutter/material.dart';
import 'register_business_screen.dart';

class IngelosiWelcomeScreen extends StatefulWidget {
  const IngelosiWelcomeScreen({super.key});
  @override
  State<IngelosiWelcomeScreen> createState() => IngelosiWelcomeScreenState();
}

class IngelosiWelcomeScreenState extends State<IngelosiWelcomeScreen>
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
          image: DecorationImage(
            image: AssetImage('lib/asset/images/welcome.png'),
            fit: BoxFit.fill,
            alignment: Alignment.center, // Position the image
            colorFilter: ColorFilter.mode(
              Colors.black.withValues(alpha: 0.3), // Add overlay
              BlendMode.darken,
            ),
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
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            // Wings
                            Positioned.fill(
                              child: Center(
                                child: Image.asset(
                                  'lib/asset/images/logo2.png',
                                  width: 200,
                                  height: 200,
                                ),
                              ),
                            ),
                          ],
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
                      SizedBox(
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
                          fontWeight: FontWeight.w400,
                          letterSpacing: 2,
                          fontFamily: 'Agrandir-GrandHeavy',
                          height: 1.1,
                        ),
                      ),

                      SizedBox(height: 30),

                      // Subtitle
                      Text(
                        'Unlocking Capital. Empowering Small Businesses.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.9),
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
                  child: SizedBox(
                    width: 220,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
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
                          side: BorderSide(color: Color(0xFFD4AF37), width: 2),
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
                          Icon(Icons.arrow_forward, size: 20),
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
            color: Color(
              0xFF00A693,
            ).withValues(alpha: 0.3 + (0.7 * animationValue)),
            shape: BoxShape.circle,
          ),
        );
      },
    );
  }
}
