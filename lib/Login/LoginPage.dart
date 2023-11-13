import 'package:apptest/Home/HomePage.dart';
import 'package:apptest/Login/RegisterPage.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool checked = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
            ),
          ),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Image.asset("assets/logo.png"),
            ),

                 Container(
                   padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                   child: const TextField(
                     keyboardType: TextInputType.emailAddress,
                     decoration: InputDecoration(
                       hintText: "E.g flutter@gmail.com",
                       label: Text("Email"),
                     ),
                   ),
                 ),



            Container(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "********",
                  label: Text("Password"),
                ),
              ),
            ),

                const SizedBox(
                  height: 10.0,
                ),

              Row(
                  children: [
                    IconButton(onPressed: ()
                    { checked != false;},
                        icon: Icon(checked ? Icons.check_box_outline_blank : Icons.check_box_outlined)),
                    const Text("Remember me"),
                    const SizedBox(
                      width: 40.0,
                    ),
                    TextButton(onPressed: (){}, child: const Text("Forgot Password")),
                  ],
                ),

              const SizedBox(
                  height: 10.0,
                ),

              ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(tBtncolor),
                minimumSize: MaterialStateProperty.all(const Size(150.0,35.0)),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const HomePage())
                );
              },
              child: const Text("LOGIN",),
            ),

                const SizedBox(
                  height: 60.0,
                ),

                Row(
                  children: [
                    const Text("Do not have any account?"),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const RegisterPage())
                      );
                    },
                        child: const Text("Register")),
                  ],
                ),
            ],
            ),
       ),
        ),
    );
  }
}


