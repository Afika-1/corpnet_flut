
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String postId;
  final String content;
  final String companyLogoUrl; // URL for the company logo
  final String companyName;     // Name of the company
  final String location;        // Location of the company
  final String timePosted;      // Time when the post was made

  const PostWidget({
    super.key,
    required this.postId,
    required this.content,
    required this.companyLogoUrl,
    required this.companyName,
    required this.location,
    required this.timePosted,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1F2937),
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with company logo, name, location, and time posted
            Row(
              children: [
                // Company Logo with round shape
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFF7F1D1D), // Maroon background
                    shape: BoxShape.circle, // Make it circular
                  ),
                  child: ClipOval(
                    child: Image.network(
                      companyLogoUrl,
                      width: 48,
                      height: 48,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.business,
                          color: Colors.white, // Change icon color to white
                          size: 24,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Company Name and Location
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        companyName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            location,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.access_time,
                            size: 14,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            timePosted,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Post content
            Text(
              content,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 8),
            // Action buttons for like and comment
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.thumb_up, color: Colors.white),
                  onPressed: () {
                    // Handle like
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.comment, color: Colors.white),
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
