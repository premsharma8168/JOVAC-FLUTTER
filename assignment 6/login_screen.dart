
import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              const Icon(Icons.lock, size: 60),
              const SizedBox(height: 20),
              const Text("Welcome Back!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const Text("Login to continue", style: TextStyle(color: Colors.black54)),
              const SizedBox(height: 30),
              _buildTextField(icon: Icons.email_outlined, hint: "Email"),
              const SizedBox(height: 15),
              _buildTextField(icon: Icons.lock_outline, hint: "Password", obscure: true),
              const SizedBox(height: 25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const DashboardScreen()));
                },
                child: const Text("Login", style: TextStyle(color: Colors.deepPurple)),
              ),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const SignupScreen()));
                },
                child: const Text("Don't have an account? Sign up", style: TextStyle(color: Colors.brown)),
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
