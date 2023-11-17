import 'package:apptest/Login/LoginPage.dart';
import 'package:flutter/material.dart';

import 'RegisterPage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      const Color(0xFFACA1EB), // Màu nền xanh tím nhạt cho App Bar
      body: Container(
        color: const Color(0xFFACA1EB), // Màu nền xanh tím nhạt cho màn hình
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'A new world to explore',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Màu chữ trắng
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Image.asset('lib/assets/Image26.png',
                height: 300, width: 300), // Đường dẫn hình ảnh của bạn
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Xử lý sự kiện khi nhấn nút "Get Started"
                //_navigateToLogin(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Màu nút xanh
              ),
              child: Text('Get Started'),
            ),
            SizedBox(height: 35),
            TextButton(
                onPressed: () {
                  // Xử lý sự kiện khi nhấn nút "Sign Up"
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                child: Text('Register if  do not have an account?',
                    style: TextStyle(color: Colors.black))),
          ],
        ),
      ),
    );
  }
}


