import 'package:flutter/material.dart';

import 'sign_in.dart';
import 'sign_up.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 113),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              children: [
                const Text(
                  'EverGreen\nFarm',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Image.network(
                  'https://cdn.builder.io/api/v1/image/assets/TEMP/815354ce52c8452f6239ec9466573e8d1ab6f406bedf8a0c3085a089701edb46?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                  semanticLabel: 'Evergreen Farm Logo',
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 55),
                ElevatedButton(
                  onPressed: () {
                    // Handle sign in
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF21BBCC),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 70,
                      vertical: 14,
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 55),
                ElevatedButton(
                  onPressed: () {
                    // Handle sign up
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpScreen()),
                      );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF21BBCC),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 70,
                      vertical: 14,
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}