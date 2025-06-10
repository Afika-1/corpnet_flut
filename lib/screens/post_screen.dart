import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Colors from the screenshot and PostWidget
    const backgroundColor = Color(0xFF0F172A);
    const textAreaBgColor = Color(0xFF1E2A3A);
    const red600 = Color(0xFFEF4444);
    const gray400 = Color(0xFF9CA3AF);
    const maroon = Color(0xFF7F1D1D);

    return Scaffold(
      backgroundColor: const Color(0xFF0A121D),
      appBar: AppBar(
        title: const Text('Create Post'),
        backgroundColor: const Color(0xFF1E2A3A),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Post',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  // User Logo with round shape
                  Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                      color: maroon, // Maroon background
                      shape: BoxShape.circle, // Make it circular
                    ),
                    child: ClipOval(
                      child: Image.network(
                        'https://via.placeholder.com/48', // Replace with user logo URL
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.person,
                            color: Colors.white, // Change icon color to white
                            size: 24,
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'John Doe',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Posting to feed',
                        style: TextStyle(
                          color: gray400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _controller,
                maxLines: 4,
                style: const TextStyle(
                  color: gray400,
                  fontSize: 14,
                ),
                cursorColor: red600,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: textAreaBgColor,
                  hintText: "What's happening in your business world?",
                  hintStyle: const TextStyle(
                    color: Color(0xFF6B7280), // placeholder gray-500
                    fontSize: 14,
                  ),
                  contentPadding: const EdgeInsets.all(12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: red600, width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      _IconButton(
                        icon: Icons.camera_alt_outlined,
                        onPressed: () {},
                        tooltip: 'Add photo',
                      ),
                      const SizedBox(width: 8),
                      _IconButton(
                        icon: Icons.location_on_outlined,
                        onPressed: () {},
                        tooltip: 'Add location',
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: red600,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Post',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _IconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final String tooltip;

  const _IconButton({
    required this.icon,
    required this.onPressed,
    required this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFF1E2A3A);
    const iconColor = Color(0xFF9CA3AF);

    return Tooltip(
      message: tooltip,
      child: Material(
        color: bgColor,
        borderRadius: BorderRadius.circular(6),
        child: InkWell(
          borderRadius: BorderRadius.circular(6),
          onTap: onPressed,
          child: SizedBox(
            width: 36,
            height: 36,
            child: Icon(
              icon,
              color: iconColor,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}