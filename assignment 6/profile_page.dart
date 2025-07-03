
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD6C6C0),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/flutter_banner.png'), // Replace with your asset
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.jpg'), // Replace with your asset
                    radius: 40,
                  ),
                  SizedBox(height: 12),
                  Text("John Doe", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("john@example.com", style: TextStyle(color: Colors.grey[700])),
                  Divider(height: 32, color: Colors.grey),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _infoColumn("12", "Courses"),
                      _infoColumn("5", "Badges"),
                      _infoColumn("23", "Rank"),
                    ],
                  )
                ],
              ),
            ),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back, color: Colors.purple),
              label: Text("Back", style: TextStyle(color: Colors.purple)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF5B3C2C),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _infoColumn(String count, String label) {
    return Column(
      children: [
        Text(count, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Text(label, style: TextStyle(color: Colors.grey[700])),
      ],
    );
  }
}
