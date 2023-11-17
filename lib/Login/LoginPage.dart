import 'package:flutter/material.dart';


import '../Home/NavScreen.dart';
import 'ForgotPage.dart';


class LoginPage extends StatefulWidget {
  final String? successMessage;
  const LoginPage({Key? key, this.successMessage}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String enteredPassword = '';
  bool _isPasswordIncorrect = false;
  bool rememberMe = false;
  void _navigateToForgotPassword() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFACA1EB),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Tiêu đề text "Login"
              _buildLoginTitle(),
              // Hình ảnh giữa màn hình
              _buildLogo(),
              // Ô nhập Email
              _buildEmailInput(),
              // Ô nhập Mật khẩu
              _buildPasswordInput(),
              // Thông báo lỗi mật khẩu
              if (_isPasswordIncorrect) _buildErrorText(),
              _buildRememberMeCheckbox(),

              // Nút Đăng nhập
              _buildLoginButton(),
              // Đường dẫn Quên mật khẩu
              _buildForgotPasswordLink(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginTitle() {
    return const Text(
      'LOGIN',
      style: TextStyle(
        fontSize: 35.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Image.asset(
        'assets/login.png', // Thay 'your_logo.png' bằng tên file hình ảnh của bạn
        width: 150.0,
        height: 150.0,
      ),
    );
  }

  Widget _buildEmailInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: _emailController,
        decoration: InputDecoration(
          hintText: 'Email',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          prefixIcon: const Icon(Icons.email),
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          }
          // You can add more advanced email validation if needed
          if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
              .hasMatch(value)) {
            return 'Please enter a valid email address';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildPasswordInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: _passwordController,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          prefixIcon: const Icon(Icons.remove_red_eye_rounded),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Row(
      children: [
        Checkbox(
          value: rememberMe,
          onChanged: (value) {
            setState(() {
              rememberMe = value!;
            });
          },
        ),
        const Text('Remember me'),
      ],
    );
  }

  Widget _buildErrorText() {
    return const Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Text(
        '*Incorrect email or password, please re-enter',
        style: TextStyle(color: Colors.red),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: _handleLogin,
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: const Color(0xff879A15),
          padding: const EdgeInsets.symmetric(vertical: 16.0),
        ),
        child: const SizedBox(
          width: double.infinity,
          child: Text(
            'Login',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }

  Widget _buildForgotPasswordLink() {
    return TextButton(
      onPressed: _navigateToForgotPassword,
      child: Text(
        'Forgot your password?',
        style: TextStyle(
          color: Color(0xff1728c8),
        ),
      ),
    );
  }

  void _handleLogin() {
    // Xử lý đăng nhập
    String enteredEmail = _emailController.text;
    String enteredPassword = _passwordController.text;
    if (enteredEmail == 'lhpu@gmail.com' && enteredPassword == '2002') {
      // Đăng nhập thành công
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NavBarScreen()),
      );
      setState(() {
        _isPasswordIncorrect = false;
      });
      // Thực hiện các hành động cần thiết sau khi đăng nhập thành công
    } else {
      // Hiển thị thông báo lỗi mật khẩu
      setState(() {
        _isPasswordIncorrect = true;
      });
    }
  }
}


