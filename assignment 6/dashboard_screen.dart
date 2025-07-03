
import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'courses_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("Dashboard"),
        leading: const Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://via.placeholder.com/400x150.png?text=Flutter+Dashboard+UI+Design'),
            const SizedBox(height: 20),
            const Text("Welcome back,", style: TextStyle(fontSize: 16)),
            const Text("John Doe 👋", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            _buildTile(context, icon: Icons.person, title: "View Profile", subtitle: "See and edit your personal information.", page: const ProfileScreen()),
            _buildTile(context, icon: Icons.book, title: "View Courses", subtitle: "Continue learning or explore new topics.", page: const CoursesScreen()),
          ],
        ),
      ),
    );
  }

  Widget _buildTile(BuildContext context, {required IconData icon, required String title, required String subtitle, required Widget page}) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
      ),
    );
  }
}
