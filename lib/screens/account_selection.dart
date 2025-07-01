// import 'package:corpnet_flut/screens/business_page.dart';
// import 'package:corpnet_flut/screens/login_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:corpnet_flut/widgets/navbar.dart';

// class AccountSelectionScreen extends StatefulWidget {
//   const AccountSelectionScreen({super.key});

//   @override
//   _AccountSelectionScreenState createState() => _AccountSelectionScreenState();
// }

// class _AccountSelectionScreenState extends State<AccountSelectionScreen> {
//   bool _isSearchExpanded = false;
//   final TextEditingController _searchController = TextEditingController();

//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     const maroon = Color(0xFFDC2626);

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF1F2937),
//         elevation: 0,
//         automaticallyImplyLeading: false,
//         title: Row(
//           children: [
//             // CorpNet Title
//             RichText(
//               text: TextSpan(
//                 style:
//                     theme.textTheme.titleLarge?.copyWith(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 24,
//                       fontFamily: 'Inter',
//                     ) ??
//                     const TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                       fontSize: 24,
//                       fontFamily: 'Inter',
//                     ),
//                 children: [
//                   const TextSpan(
//                     text: 'Corp',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   TextSpan(
//                     text: 'Net',
//                     style: TextStyle(color: maroon),
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(),
//             // Search functionality
//             AnimatedContainer(
//               duration: const Duration(milliseconds: 300),
//               width: _isSearchExpanded
//                   ? MediaQuery.of(context).size.width * 0.4
//                   : 40,
//               height: 40,
//               child: _isSearchExpanded
//                   ? Container(
//                       decoration: BoxDecoration(
//                         color: const Color(0xFF374151),
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: TextField(
//                         controller: _searchController,
//                         autofocus: true,
//                         decoration: const InputDecoration(
//                           hintText: 'Search CorpNet',
//                           hintStyle: TextStyle(
//                             color: Colors.grey,
//                             fontSize: 14,
//                           ),
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.symmetric(
//                             horizontal: 16,
//                             vertical: 10,
//                           ),
//                         ),
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 14,
//                         ),
//                       ),
//                     )
//                   : IconButton(
//                       icon: const Icon(
//                         Icons.search,
//                         color: Colors.white,
//                         size: 24,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _isSearchExpanded = true;
//                         });
//                       },
//                     ),
//             ),
//             if (_isSearchExpanded)
//               IconButton(
//                 icon: const Icon(Icons.close, color: Colors.white, size: 20),
//                 onPressed: () {
//                   setState(() {
//                     _isSearchExpanded = false;
//                     _searchController.clear();
//                   });
//                 },
//               ),
//             // Notification Icon
//             IconButton(
//               icon: const Icon(
//                 Icons.notifications,
//                 color: Colors.white,
//                 size: 24,
//               ),
//               onPressed: () {
//                 // Handle notification tap
//               },
//             ),
//           ],
//         ),
//       ),
//       backgroundColor: Colors.black,
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Join CorpNet',
//               style: TextStyle(fontSize: 24, color: Colors.white),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Choose your account type to get started',
//               style: TextStyle(fontSize: 16, color: Colors.white54),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to profile screen
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => BusinessPage()),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.red, // Background color
//                 fixedSize: Size(double.infinity, 100),
//               ),
//               child: Text(
//                 'Business Account',
//                 style: TextStyle(color: Colors.white, fontSize: 18),
//               ),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to profile screen
//                 // Navigator.push(
//                 //   context,
//                 //   MaterialPageRoute(builder: (context) => UserProfileScreen()),
//                 // );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.red, // Background color
//                 fixedSize: Size(double.infinity, 100),
//               ),
//               child: Text(
//                 'Personal Account',
//                 style: TextStyle(color: Colors.white, fontSize: 18),
//               ),
//             ),
//             SizedBox(height: 20),
//             TextButton(
//               onPressed: () {
//                 // Navigate to Sign In screen
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => LoginScreen()),
//                 );
//               },
//               child: Text(
//                 'Already have an account? Sign In',
//                 style: TextStyle(color: Colors.white54),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: const Navbar(),
//     );
//   }
// }



import 'package:flutter/material.dart';

class AccountSelectionScreen extends StatelessWidget {
  const AccountSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF0A0E1A),
            backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E1A),
        elevation: 0,
        title: Row(
          children: [
            const Text(
              'Corp',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Community',
              style: TextStyle(
                color: Color(0xFFD4AF37),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
         const CircleAvatar(
            radius: 16,
            backgroundColor: Color(0xFFD4AF37),
            child: Icon(Icons.person, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Join CorpNet',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Choose your account type to get started',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              _buildAccountTypeCard(
                context,
                icon: Icons.business_center,
                title: 'Business Account',
                subtitle: 'Promote your services and connect with customers',
                onTap: () {
                  _showAccountTypeSelected(context, 'Business');
                },
              ),
              const SizedBox(height: 24),
              _buildAccountTypeCard(
                context,
                icon: Icons.person,
                title: 'Personal Account',
                subtitle: 'Network with businesses and professionals',
                onTap: () {
                  _showAccountTypeSelected(context, 'Personal');
                },
              ),
              const SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _showSignInDialog(context);
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color(0xFFD4AF37),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAccountTypeCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: const Color(0xFF0A0E1A),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.1),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: const BoxDecoration(
                color: Color(0xFFD4AF37),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 24,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white54,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }

  void _showAccountTypeSelected(BuildContext context, String accountType) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF1A1F2E),
          title: Text(
            '$accountType Account Selected',
            style: const TextStyle(color: Colors.white),
          ),
          content: Text(
            'You selected a $accountType account. This would typically navigate to the account setup screen.',
            style: const TextStyle(color: Colors.white70),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'OK',
                style: TextStyle(color: Color(0xFFD4AF37)),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showSignInDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF1A1F2E),
          title: const Text(
            'Sign In',
            style: TextStyle(color: Colors.white),
          ),
          content: const Text(
            'This would typically navigate to the sign-in screen.',
            style: TextStyle(color: Colors.white70),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'OK',
                style: TextStyle(color: Color(0xFFE53E3E)),
              ),
            ),
          ],
        );
      },
    );
  }
}