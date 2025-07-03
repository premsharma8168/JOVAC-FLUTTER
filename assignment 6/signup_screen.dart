
import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCEB8AF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.person_add, size: 60),
              const SizedBox(height: 20),
              const Text("Create Account", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const Text("Sign up to get started", style: TextStyle(color: Colors.black54)),
              const SizedBox(height: 30),
              _buildTextField(icon: Icons.person, hint: "Full Name"),
              const SizedBox(height: 10),
              _buildTextField(icon: Icons.email_outlined, hint: "Email"),
              const SizedBox(height: 10),
              _buildTextField(icon: Icons.lock_outline, hint: "Password", obscure: true),
              const SizedBox(height: 10),
              _buildTextField(icon: Icons.lock_outline, hint: "Confirm Password", obscure: true),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {},
                child: const Text("Sign Up", style: TextStyle(color: Colors.deepPurple)),
              ),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Already have an account? Login", style: TextStyle(color: Colors.brown)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required IconData icon, required String hint, bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
