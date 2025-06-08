import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String postId;
  final String content;

  const PostWidget({super.key, required this.postId, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF1F2937),
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(content, style: TextStyle(color: Colors.white)),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.thumb_up, color: Colors.white),
                  onPressed: () {
                    // Handle like
                  },
                ),
                IconButton(
                  icon: Icon(Icons.comment, color: Colors.white),
                  onPressed: () {
                    // Handle comment
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}