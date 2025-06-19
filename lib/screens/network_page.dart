import 'package:flutter/material.dart';

class NetworkScreen extends StatelessWidget {
  const NetworkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E1A),
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
              'Net',
              style: TextStyle(
                color: Color(0xFFE53E3E),
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
          // IconButton(
          //   icon: const Icon(Icons.notifications_outlined, color: Colors.white),
          //   onPressed: () {},
          // ),
          const CircleAvatar(
            radius: 16,
            backgroundColor: Color(0xFFE53E3E),
            child: Icon(Icons.person, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Connect with companies\nand professionals',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                _buildCompanyCard(
                  icon: Icons.grid_3x3,
                  companyName: 'Digital Marketing Pro',
                  companyType: 'Agency',
                  location: 'London',
                  connections: '500+',
                  logoUrl: null, // Use icon instead of problematic URL
                ),
                const SizedBox(height: 16),
                _buildCompanyCard(
                  icon: Icons.restaurant,
                  companyName: 'Local Restaurant Group',
                  companyType: 'Restaurant',
                  location: 'Manchester',
                  connections: '250+',
                  logoUrl: null, // Use icon instead
                ),
                const SizedBox(height: 16),
                _buildCompanyCard(
                  icon: Icons.build,
                  companyName: 'Tech Solutions Ltd',
                  companyType: 'Technology',
                  location: 'Birmingham',
                  connections: '750+',
                  logoUrl: null, // Use icon instead
                ),
                const SizedBox(height: 16),
                _buildCompanyCard(
                  icon: Icons.medical_services,
                  companyName: 'Healthcare Partners',
                  companyType: 'Healthcare',
                  location: 'Edinburgh',
                  connections: '320+',
                  logoUrl: null, // Use icon instead
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1A1F2E),
        selectedItemColor: const Color(0xFFE53E3E),
        unselectedItemColor: Colors.white70,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildCompanyCard({
    required IconData icon,
    required String companyName,
    required String companyType,
    required String location,
    required String connections,
    String? logoUrl,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1F2E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              color: Color(0xFFE53E3E),
              shape: BoxShape.circle,
            ),
            child: logoUrl != null 
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      logoUrl,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(
                          icon,
                          color: Colors.white,
                          size: 30,
                        );
                      },
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Icon(
                          icon,
                          color: Colors.white,
                          size: 30,
                        );
                      },
                    ),
                  )
                : Icon(
                    icon,
                    color: Colors.white,
                    size: 30,
                  ),
          ),
          const SizedBox(height: 16),
          Text(
            companyName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            companyType,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Colors.white54,
                size: 16,
              ),
              const SizedBox(width: 4),
              Text(
                location,
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '$connections connections',
            style: const TextStyle(
              color: Colors.white54,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE53E3E),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: const Text(
                'Connect',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Usage example - add this to your main app
// class NetworkApp extends StatelessWidget {
//   const NetworkApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'CorpNet',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: const NetworkScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
