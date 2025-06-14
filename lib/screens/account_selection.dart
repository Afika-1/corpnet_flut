import 'package:corpnet_flut/screens/business_page.dart';
import 'package:corpnet_flut/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:corpnet_flut/widgets/navbar.dart';

class AccountSelectionScreen extends StatefulWidget {
  const AccountSelectionScreen({super.key});

  @override
  _AccountSelectionScreenState createState() => _AccountSelectionScreenState();
}

class _AccountSelectionScreenState extends State<AccountSelectionScreen> {
  bool _isSearchExpanded = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const maroon = Color(0xFFDC2626);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F2937),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            // CorpNet Title
            RichText(
              text: TextSpan(
                style:
                    theme.textTheme.titleLarge?.copyWith(
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
              width: _isSearchExpanded
                  ? MediaQuery.of(context).size.width * 0.4
                  : 40,
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
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    )
                  : IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 24,
                      ),
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
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 24,
              ),
              onPressed: () {
                // Handle notification tap
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Join CorpNet',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'Choose your account type to get started',
              style: TextStyle(fontSize: 16, color: Colors.white54),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to profile screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusinessPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Background color
                fixedSize: Size(double.infinity, 100),
              ),
              child: Text(
                'Business Account',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to profile screen
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => UserProfileScreen()),
                // );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Background color
                fixedSize: Size(double.infinity, 100),
              ),
              child: Text(
                'Personal Account',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Navigate to Sign In screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                'Already have an account? Sign In',
                style: TextStyle(color: Colors.white54),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
