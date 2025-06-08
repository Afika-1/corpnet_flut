import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
        backgroundColor: Color(0xFFDC2626),
      ),
      body: ListView(
        children: [
          PostWidget(postId: '1', content: 'Welcome to CorpNet!'),
          PostWidget(postId: '2', content: 'Check out our new services!'),
          PostWidget(postId: '3', content: 'Join our network!'),
        ],
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}