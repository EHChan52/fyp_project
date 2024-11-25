import 'package:flutter/services.dart' show rootBundle;

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'user_home_page.dart';
import 'sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<Map<String, String>> _loadUserData() async {
  try {
    final contents = await rootBundle.loadString('lib/data/user_account_data.txt');
    final lines = contents.split('\n');
    final userData = <String, String>{};

    for (var line in lines) {
      final parts = line.split(':');
      if (parts.length == 2) {
        userData[parts[0].trim()] = parts[1].trim();
      }
    }

    return userData;
  } catch (e) {
    print('Error loading user data: $e');
    return {};
  }
}

  void _signIn() async {
    if (_formKey.currentState!.validate()) {
      final userData = await _loadUserData();
      final username = userData['username'];
      final email = userData['email'];
      final password = userData['password'];

      if ((_emailController.text == username || _emailController.text == email) &&
          _passwordController.text == password) {
        // Navigate to the home page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      } else {
        // Show an error message
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Invalid username or password'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 173),
                    const Text(
                      'Welcome Back!',
                      style: TextStyle(
                        fontSize: 34,
                        color: Colors.black,
                      ),
                      semanticsLabel: 'Welcome Back heading',
                    ),
                    const SizedBox(height: 20),
                    const CircleAvatar(
                      radius: 91,
                      backgroundImage: NetworkImage('https://cdn.builder.io/api/v1/image/assets/TEMP/dd02faba8d4e8af9ebd295fc4b97caa03596bda2c4fcdc1b847ecc81ba97f43f?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc'),
                      backgroundColor: Colors.transparent,
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'Enter your email/username',
                        hintStyle: const TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 18,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 29),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        hintText: 'Enter password',
                        hintStyle: const TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 17,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 47),
                    ElevatedButton(
                      onPressed: _signIn,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF21BBCC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        minimumSize: const Size(double.infinity, 52),
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 47),
                    TextButton(
                      onPressed: () {
                        // Handle forgot password
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Forgot Password functionality is not implemented yet.'),
                          ),
                        );
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF21BBCC),
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account? ',
                        style: const TextStyle(
                          color: Color(0x99000000),
                          fontSize: 15,
                        ),
                        children: [
                            TextSpan(
                            text: 'Sign up',
                            style: const TextStyle(
                              color: Color(0xFF21BBCC),
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SignUpScreen()),
                                );
                              },
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 173),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}