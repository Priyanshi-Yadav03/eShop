import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2C003E), // deep purple base
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Shubham\nTraders',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD580FF), // light purple text
              ),
            ),
            const SizedBox(height: 60),

            // Email Field
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFD580FF)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Color(0xFFD580FF)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Password Field
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFD580FF)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Color(0xFFD580FF)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Log In Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Login logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD580FF), // lavender button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Bottom options
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Create account',
                  style: TextStyle(color: Color(0xFFD580FF), fontSize: 16),
                ),
                Text(
                  'Forgot password?',
                  style: TextStyle(color: Color(0xFFD580FF), fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
