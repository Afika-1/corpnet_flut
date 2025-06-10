
// import 'package:flutter/material.dart';
// import '../widgets/post_widget.dart';
// import '../widgets/navbar.dart';  // Import the navbar widget

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // For Default Design Guidelines, light background & subtle shadows
//     return Scaffold(
//       backgroundColor: Color(0xFF111827),
//       appBar: AppBar(
//         title: const Text(
//           'CorpNet',
//           style: TextStyle(
//             color: Color(0xFFDC2626), // dark text
//             fontWeight: FontWeight.w700,
//             fontSize: 24,
//           ),
//         ),
//         backgroundColor: Color(0xFF1F2937),
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Color(0xFF111827)),
//       ),
//       body: Center(
//         child: ConstrainedBox(
//           constraints: const BoxConstraints(maxWidth: 1200),
//           child: ListView(
//             padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
//             children: const [
//               PostWidget(
//                 postId: '1',
//                 content: 'Welcome to CorpNet!',
//                 companyLogoUrl: 'https://example.com/logo1.png',
//                 companyName: 'CorpNet Inc.',
//                 location: 'San Francisco, CA',
//                 timePosted: '1 hour ago',
//               ),
//               PostWidget(
//                 postId: '2',
//                 content: 'Check out our new services!',
//                 companyLogoUrl: 'https://example.com/logo2.png',
//                 companyName: 'CorpNet Inc.',
//                 location: 'San Francisco, CA',
//                 timePosted: '2 hours ago',
//               ),
//               PostWidget(
//                 postId: '3',
//                 content: 'Join our network!',
//                 companyLogoUrl: 'https://example.com/logo3.png',
//                 companyName: 'CorpNet Inc.',
//                 location: 'San Francisco, CA',
//                 timePosted: '3 hours ago',
//               ),
//                 PostWidget(
//                 postId: '4',
//                 content: 'Join our network!',
//                 companyLogoUrl: 'https://example.com/logo3.png',
//                 companyName: 'CorpNet Inc.',
//                 location: 'San Francisco, CA',
//                 timePosted: '3 hours ago',
//               ),
//                 PostWidget(
//                 postId: '5',
//                 content: 'Join our network!',
//                 companyLogoUrl: 'https://example.com/logo3.png',
//                 companyName: 'CorpNet Inc.',
//                 location: 'San Francisco, CA