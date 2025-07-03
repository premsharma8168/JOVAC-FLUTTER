
import 'package:flutter/material.dart';
import 'course_details_page.dart';

class CourseListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFE8E4),
      appBar: AppBar(
        backgroundColor: Color(0xFFD6C6C0),
        title: Text('Courses'),
        leading: BackButton(),
      ),
      body: ListView(
        children: [
          _buildCourseTile(context, "Flutter Basics", "Introduction to Flutter."),
          _buildCourseTile(context, "Dart Language", "Learn Dart in depth."),
        ],
      ),
    );
  }

  Widget _buildCourseTile(BuildContext context, String title, String subtitle) {
    return Card(
      color: Color(0xFFF5ECE9),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: Icon(Icons.bookmark, color: Colors.brown),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => CourseDetailsPage(courseTitle: title, description: subtitle)),
          );
        },
      ),
    );
  }
}
