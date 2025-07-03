
import 'package:flutter/material.dart';

class CourseDetailsPage extends StatelessWidget {
  final String courseTitle;
  final String description;

  CourseDetailsPage({required this.courseTitle, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFE8E4),
      appBar: AppBar(
        backgroundColor: Color(0xFFD6C6C0),
        title: Text(courseTitle),
        leading: BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(courseTitle, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Course Description", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
            SizedBox(height: 6),
            Text(description),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Implement course start logic
                },
                icon: Icon(Icons.play_circle, color: Colors.purple),
                label: Text("Start Course", style: TextStyle(color: Colors.purple)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5B3C2C),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
