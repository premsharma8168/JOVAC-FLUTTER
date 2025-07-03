
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: FeedbackForm(),
    debugShowCheckedModeBanner: false,
  ));
}

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({Key? key}) : super(key: key);

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  double rating = 5;
  String selectedCategory = 'Choose a category';
  List<String> categories = ['Bug Report', 'Feature Request', 'UI Feedback'];
  bool easyToUse = false, design = false, speed = false, support = false, agree = false;

  final nameController = TextEditingController();
  final rollController = TextEditingController();
  final feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Feedback Form'),
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextField(nameController, 'Name', 'Enter your name'),
            const SizedBox(height: 10),
            _buildTextField(rollController, 'Roll Number', 'Enter your roll number'),
            const SizedBox(height: 10),
            const Text("Enter your feedback..."),
            const SizedBox(height: 5),
            TextField(
              controller: feedbackController,
              maxLines: 4,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Rate your experience'),
                Text(rating.toInt().toString()),
              ],
            ),
            Slider(
              value: rating,
              onChanged: (value) {
                setState(() => rating = value);
              },
              min: 0,
              max: 10,
              divisions: 10,
              label: rating.toInt().toString(),
            ),
            const SizedBox(height: 10),
            const Text('Select a category'),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton<String>(
                value: selectedCategory,
                isExpanded: true,
                underline: const SizedBox(),
                items: ['Choose a category', ...categories].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value!;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "What features did you like?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: const Text("Easy to Use"),
              value: easyToUse,
              onChanged: (val) => setState(() => easyToUse = val!),
            ),
            CheckboxListTile(
              title: const Text("Design"),
              value: design,
              onChanged: (val) => setState(() => design = val!),
            ),
            CheckboxListTile(
              title: const Text("Speed"),
              value: speed,
              onChanged: (val) => setState(() => speed = val!),
            ),
            CheckboxListTile(
              title: const Text("Support"),
              value: support,
              onChanged: (val) => setState(() => support = val!),
            ),
            CheckboxListTile(
              title: const Text("I agree to the terms and conditions"),
              value: agree,
              onChanged: (val) => setState(() => agree = val!),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text("Submit", style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 5),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    );
  }
}
