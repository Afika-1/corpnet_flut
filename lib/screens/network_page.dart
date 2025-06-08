import 'package:flutter/material.dart';

class NetworkPage extends StatelessWidget {
  const NetworkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Network'),
        backgroundColor: Color(0xFFDC2626),
      ),
      body: Center(
        child: Text('Connect with other businesses.'),
      ),
    );
  }
}