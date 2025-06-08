import 'package:flutter/material.dart';

class BusinessPage extends StatelessWidget {
  const BusinessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Management'),
        backgroundColor: Color(0xFFDC2626),
      ),
      body: Center(
        child: Text('Manage your business here.'),
      ),
    );
  }
}