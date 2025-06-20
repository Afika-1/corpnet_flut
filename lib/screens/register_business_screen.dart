
import 'package:flutter/material.dart';

class BusinessRegistrationScreen extends StatefulWidget {
  const BusinessRegistrationScreen ({super.key});

  @override
  State<BusinessRegistrationScreen>createState() => BusinessRegistrationScreenState();
  
}

class BusinessRegistrationScreenState extends State<BusinessRegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _businessNameController = TextEditingController();
  final _contactNumberController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _fullNameController.dispose();
    _businessNameController.dispose();
    _contactNumberController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Stack(
          children: [
            // Top left white gradient
            Positioned(
              top: -10,
              left: -100,
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment.center,
                    radius: 0.5,
                    colors: [
                      Colors.white.withValues(alpha:0.15),
                      Colors.white.withValues(alpha:0.08),
                      Colors.white.withValues(alpha:0.08),
                      Colors.transparent,
                    ],
                    stops: [0.0, 0.4, 0.7, 1.0],
                  ),
                ),
              ),
            ),
            // Bottom right white gradient
            Positioned(
              bottom: -100,
              right: -100,
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment.center,
                    radius: 1.0,
                    colors: [           
                      Colors.white.withValues(alpha:0.15),
                      Colors.white.withValues(alpha:0.08),
                      Colors.white.withValues(alpha:0.03),
                      Colors.transparent,
                    ],
                    stops: [0.0, 0.4, 0.7, 1.0],
                  ),
                ),
              ),
            ),
            // Main content
            SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    
                    // Header with logo and menu
                 Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(),
                        SizedBox(
                          width: 200,
                          height: 200,
                          child: Stack(
                            children: [
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
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Container(width: 25, height: 3, color: Colors.white),
                              SizedBox(height: 4),
                              Container(width: 25, height: 3, color: Colors.white),
                              SizedBox(height: 4),
                              Container(width: 25, height: 3, color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                    
                    SizedBox(height: 60),
                    
                    // Registration Title
                    Text(
                      'Registration',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2,
                        fontFamily: 'Agrandir',
                      ),
                    ),
                    
                    SizedBox(height: 30),
                    
                    // Subtitle
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Kindly complete your details to finalize your registration. Your prompt response will help us process your registration smoothly. Thank you!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.5,
                          fontFamily: 'Agrandir',
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 50),
                    
                    // Registration Form
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          _buildTextField(
                            controller: _fullNameController,
                            hintText: 'Full Name *',
                            keyboardType: TextInputType.name,
                          ),
                          SizedBox(height: 20),
                          
                          _buildTextField(
                            controller: _businessNameController,
                            hintText: 'Business Name *',
                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(height: 20),
                          
                          _buildTextField(
                            controller: _contactNumberController,
                            hintText: 'Contact Number *',
                            keyboardType: TextInputType.phone,
                          ),
                          SizedBox(height: 20),
                          
                          _buildTextField(
                            controller: _emailController,
                            hintText: 'Email *',
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 20),
                          
                          _buildTextField(
                            controller: _passwordController,
                            hintText: 'Password *',
                            isPassword: true,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ],
                      ),
                    ),
                    
                    SizedBox(height: 50),
                    
                    // Register Button
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Handle registration
                            _handleRegistration();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF2D2D2D),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.5),
                            side: BorderSide(color: Colors.white24, width: 1),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontFamily: 'Agrandir',
                          ),
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    bool isPassword = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return SizedBox(
      height: 55,
      child: TextFormField(
        controller: controller,
        obscureText: isPassword && !_isPasswordVisible,
        keyboardType: keyboardType,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Agrandir',
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white60,
            fontSize: 16,
            fontWeight: FontWeight.w300,
            fontFamily: 'Agrandir',
          ),
          filled: true,
          fillColor: Color(0xFF2D2D2D).withValues(alpha:0.7),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(27.5),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(27.5),
            borderSide: BorderSide(color: Colors.white24, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(27.5),
            borderSide: BorderSide(color: Colors.amber, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(27.5),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(27.5),
            borderSide: BorderSide(color: Colors.red, width: 2),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.white60,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                )
              : null,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This field is required';
          }
          if (hintText.toLowerCase().contains('email')) {
            if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
              return 'Please enter a valid email';
            }
          }
          if (hintText.toLowerCase().contains('password')) {
            if (value.length < 6) {
              return 'Password must be at least 6 characters';
            }
          }
          return null;
        },
      ),
    );
  }

  void _handleRegistration() {
    // Show success message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Registration submitted successfully!',
          style: TextStyle(fontFamily: 'Agrandir'),
        ),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    
    // Clear form
    _fullNameController.clear();
    _businessNameController.clear();
    _contactNumberController.clear();
    _emailController.clear();
    _passwordController.clear();
  }
}
