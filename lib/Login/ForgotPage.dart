import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FORGOT PASSWORD'),
        backgroundColor: Colors.purple[200], // Màu nền tím nhạt
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 17),
            //_buildLogo(),
            SizedBox(height: 40),
            Text(
                'Enter your email address. You will receive a new password to login via email'),
            SizedBox(height: 10),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _handleSend(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Màu nút xanh
              ),
              child: Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}

void _handleSend(BuildContext context) {
  // Lấy giá trị email từ người dùng
  String email =
      '_emailController.text'; // Đây là nơi bạn sẽ lấy giá trị từ TextField hoặc nơi người dùng nhập email

  // Kiểm tra xem email có trống không
  if (email.isEmpty) {
    // Hiển thị thông báo nếu email trống
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Please enter your email !', textAlign: TextAlign.center),
      ),
    );
  } else {
    // Gửi thông báo nếu email đã được nhập và đúng định dạng
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Sent. Check your email!'),
      ),
    );
  }
}