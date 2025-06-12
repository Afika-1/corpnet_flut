
import 'package:flutter/material.dart';
import '../widgets/post_widget.dart';
import '../widgets/navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSearchExpanded = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const maroon = Color(0xFFDC2626);

    return Scaffold(
      backgroundColor: const Color(0xFF111827),
         appBar: AppBar(
        backgroundColor: const Color(0xFF1F2937),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            // CorpNet Title
            RichText(
              text: TextSpan(
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  fontFamily: 'Inter',
                ) ??
                    const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      fontFamily: 'Inter',
                    ),
                children: [
                  const TextSpan(
                    text: 'Corp',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextSpan(
                    text: 'Net',
                    style: TextStyle(color: maroon),
                  ),
                ],
              ),
            ),
            
            const Spacer(),
            
            // Search functionality
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: _isSearchExpanded ? MediaQuery.of(context).size.width * 0.4 : 40,
              height: 40,
              child: _isSearchExpanded
                  ? Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF374151),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        controller: _searchController,
                        autofocus: true,
                        decoration: const InputDecoration(
                          hintText: 'Search CorpNet',
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        ),
                        style: const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    )
                  : IconButton(
                      icon: const Icon(Icons.search, color: Colors.white, size: 24),
                      onPressed: () {
                        setState(() {
                          _isSearchExpanded = true;
                        });
                      },
                    ),
            ),
            
            if (_isSearchExpanded)
              IconButton(
                icon: const Icon(Icons.close, color: Colors.white, size: 20),
                onPressed: () {
                  setState(() {
                    _isSearchExpanded = false;
                    _searchController.clear();
                  });
                },
              ),
            
            // Notification Icon
            IconButton(
              icon: const Icon(Icons.notifications, color: Colors.white, size: 24),
              onPressed: () {
                // Handle notification tap
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            children: const [
              PostWidget(
                postId: '1',
                content: 'Welcome to CorpNet!',
                companyLogoUrl: 'https://example.com/logo1.png',
                companyName: 'CorpNet Inc.',
                location: 'San Francisco, CA',
                timePosted: '1 hour ago',
              ),
              PostWidget(
                postId: '2',
                content: 'Check out our new services!',
                companyLogoUrl: 'https://example.com/logo2.png',
                companyName: 'CorpNet Inc.',
                location: 'San Francisco, CA',
                timePosted: '2 hours ago',
              ),
              PostWidget(
                postId: '3',
                content: 'Join our network!',
                companyLogoUrl: 'https://example.com/logo3.png',
                companyName: 'CorpNet Inc.',
                location: 'San Francisco, CA',
                timePosted: '3 hours ago',
              ),
              PostWidget(
                postId: '4',
                content: 'Join our network!',
                companyLogoUrl: 'https://example.com/logo3.png',
                companyName: 'CorpNet Inc.',
                location: 'San Francisco, CA',
                timePosted: '3 hours ago',
              ),
              PostWidget(
                postId: '5',
                content: 'Join our network!',
                companyLogoUrl: 'https://example.com/logo3.png',
                companyName: 'CorpNet Inc.',
                location: 'San Francisco, CA',
                timePosted: '3 hours ago',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Navbar(),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}