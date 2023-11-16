import 'package:flutter/material.dart';
import '../Chapter/chapter.dart';
import '../Chapter/fullchapter.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String name = 'Nguyễn Tài Tuệ';
  String birthdate = '03/01/2002';
  String phoneNumber = '02487840-1';
  String email = 'ntt@gmail.com';
  String password = '12345678';

  bool isEditing = false;
  bool showPassword = false;

  late TextEditingController nameController;
  late TextEditingController birthdateController;
  late TextEditingController phoneNumberController;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: name);
    birthdateController = TextEditingController(text: birthdate);
    phoneNumberController = TextEditingController(text: phoneNumber);
    emailController = TextEditingController(text: email);
    passwordController = TextEditingController(text: password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quản Lý Tài Khoản'),
        backgroundColor: Colors.black26,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/car2.jpg'),
                    ),
                    isEditing
                        ? TextButton(
                            onPressed: () {
                              // Xử lý khi nhấn vào nút "Thay đổi ảnh"
                              // Đặt hành động khi cần thay đổi ảnh
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 50, 30, 0),
                              child: Text('Thay đổi ảnh',
                                  style: TextStyle(color: Colors.blue)),
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Tên:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              isEditing
                  ? Column(
                      children: [
                        TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                        SizedBox(height: 7),
                      ],
                    )
                  : Column(
                      children: [
                        Text(name, style: TextStyle(fontSize: 16)),
                        SizedBox(height: 7),
                      ],
                    ),
              Text(
                'Ngày sinh:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              isEditing
                  ? Column(
                      children: [
                        TextFormField(
                          controller: birthdateController,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                        SizedBox(height: 7),
                      ],
                    )
                  : Column(
                      children: [
                        Text(birthdate, style: TextStyle(fontSize: 16)),
                        SizedBox(height: 7),
                      ],
                    ),
              Text(
                'Số điện thoại:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              isEditing
                  ? Column(
                      children: [
                        TextFormField(
                          controller: phoneNumberController,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                        SizedBox(height: 7),
                      ],
                    )
                  : Column(
                      children: [
                        Text(phoneNumber, style: TextStyle(fontSize: 16)),
                        SizedBox(height: 7),
                      ],
                    ),
              Text(
                'Email:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              isEditing
                  ? Column(
                      children: [
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                        SizedBox(height: 7),
                      ],
                    )
                  : Column(
                      children: [
                        Text(email, style: TextStyle(fontSize: 16)),
                        SizedBox(height: 7),
                      ],
                    ),
              Text(
                'Mật khẩu:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              isEditing
                  ? Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: passwordController,
                                obscureText: !showPassword,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(showPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '*****',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                      ],
                    ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (isEditing) {
                        // Lưu thông tin tài khoản chỉnh sửa
                        name = nameController.text;
                        birthdate = birthdateController.text;
                        phoneNumber = phoneNumberController.text;
                        email = emailController.text;
                        password = passwordController.text;
                      }
                      isEditing = !isEditing;
                    });
                  },
                  child: isEditing
                      ? Text('Lưu thông tin', style: TextStyle(fontSize: 16))
                      : Text('Chỉnh sửa thông tin',
                          style: TextStyle(fontSize: 16)),
                  style: ElevatedButton.styleFrom(),
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    showLogoutConfirmationDialog(context);
                  },
                  child: Text('Đăng xuất', style: TextStyle(fontSize: 16)),
                  style: ElevatedButton.styleFrom(),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        backgroundColor: Color.fromARGB(255, 197, 197, 197),
        iconSize: 24.0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home page'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Truyện yêu thích'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tài khoản',
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FullChapter(),
              ),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(),
              ),
            );
          }
        },
      ),
    );
  }

  Future<void> showLogoutConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Xác nhận đăng xuất'),
          content: Text('Bạn có chắc chắn muốn đăng xuất?'),
          actions: <Widget>[
            TextButton(
              child: Text('Hủy'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Đăng xuất'),
              onPressed: () {
                Navigator.of(context).pop(); // Đóng hộp thoại
                // Điều hướng đến trang đăng nhập
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => FullChapter()),
                  (Route<dynamic> route) => false,
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    birthdateController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
