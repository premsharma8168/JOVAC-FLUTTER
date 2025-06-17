import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MaterialApp(
    home: ProfileCard(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  void _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'premnsharma2005@outlook.com',
    );
    await launchUrl(emailUri);
  }

  void _launchPhone() async {
    final Uri phoneUri = Uri(
      scheme: 'tel',
      path: '8168926020',
    );
    await launchUrl(phoneUri);
  }

  void _launchLinkedIn() async {
    const url = 'https://www.linkedin.com/in/prem-narayan-sharma-31629128b/';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Prem Narayan Sharma',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  'AI & ML Developer\nGLA University',
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Skills', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 10,
                  children: const [
                    Chip(label: Text('AI')),
                    Chip(label: Text('Machine Learning')),
                    Chip(label: Text('Java')),
                    Chip(label: Text('Robotics')),
                    Chip(label: Text('DSA')),
                    Chip(label: Text('Projects')),
                  ],
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('About', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Prem is pursuing a B.Tech in AI and IoT at GLA University. His skills include AI, machine learning, Java, robotics, DSA, and projects. Prem is aiming to become a full-stack developer with expertise in ML.',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Contact', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 10),
                ListTile(
                  leading: const Icon(Icons.email),
                  title: const Text('premnsharma2005@outlook.com'),
                  onTap: _launchEmail,
                ),
                ListTile(
                  leading: const Icon(Icons.phone),
                  title: const Text('8168926020'),
                  onTap: _launchPhone,
                ),
                ListTile(
                  leading: const Icon(Icons.link),
                  title: const Text('linkedin.com/in/prem-narayan-sharma'),
                  onTap: _launchLinkedIn,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
