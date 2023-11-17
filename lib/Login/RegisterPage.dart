

import 'package:flutter/material.dart';

import 'LoginPage.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isMale = false;
  bool isFemale = false;
  bool isOther = false;

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }

  void _handleSignUp() {
    if (_formKey.currentState?.validate() ?? false) {
      // Form is valid, proceed with signup logic
      if (_nameController.text.isEmpty ||
          _emailController.text.isEmpty ||
          _ageController.text.isEmpty ||
          _phoneController.text.isEmpty ||
          _passwordController.text.isEmpty ||
          (!isMale && !isFemale && !isOther)) {
        // At least one field is empty, show a message
        _showErrorSnackBar('Please fill in field');
      } else {
        // Navigate to the login page and show a success message
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(
              successMessage: 'Registration successful, Please log in',
            ),
          ),
        );
      }
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      const Color(0xFFACA1EB), // Màu nền xanh tím nhạt cho App Bar
      body: Container(
        color: const Color(0xFFACA1EB),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'SIGN UP',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 20),
            buildInputField('Name', _nameController),
            const SizedBox(height: 10),
            buildInputField('Email', _emailController),
            const SizedBox(height: 10),
            buildInputField('Age', _ageController),
            const SizedBox(height: 10),
            buildInputField('Phone', _phoneController),
            const SizedBox(height: 10),
            buildInputField('Password', _passwordController),
            const SizedBox(height: 5),
            CheckboxListTile(
              title: Text('Male'),
              value: isMale,
              onChanged: (value) {
                setState(() {
                  isMale = value ?? false;
                  isFemale = false;
                  isOther = false;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Female'),
              value: isFemale,
              onChanged: (value) {
                setState(() {
                  isMale = false;
                  isFemale = value ?? false;
                  isOther = false;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Other'),
              value: isOther,
              onChanged: (value) {
                setState(() {
                  isMale = false;
                  isFemale = false;
                  isOther = value ?? false;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                // Handle sign-up logic here
                _handleSignUp();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: Text('Sign Up'),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    ); // Navigate to login page
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffbfdc9d)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildInputField(String labelText, TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: labelText,
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    ),
  );
}

