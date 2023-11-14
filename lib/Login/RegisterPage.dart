import 'package:apptest/Login/LoginPage.dart';
import 'package:apptest/constant/color.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});


  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            children: <Widget>[
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Image.asset("assets/logo.png"),
              ),

          Container(
            padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            child: const TextField(

                decoration: InputDecoration(
                  hintText: "E.g Phuong Uyen Nguyen",
                  label: Text("Fullname"),
                ),
              ),
          ),

              const SizedBox(
                height: 10.0,
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

              const SizedBox(
                height: 10.0,
              ),

          Container(
            padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            child: const TextField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  label: Text("Date of birth"),
                  hintText: "E.g 02/09/2001",
                ),
              ),
          ),

              const SizedBox(
                height: 10.0,
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

          Container(
            padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "********",
                  label: Text("Confirm Password"),
                ),
              ),
          ),

              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(tBtncolor),
                  minimumSize: MaterialStateProperty.all(const Size(150.0,35.0)),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const LoginPage())
                  );
                },
                child: const Text("REGISTER",),
              ),

              const SizedBox(
                height: 0.0,
              ),


              Row(
                children: [
                  const Text("Already have account?"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const LoginPage())
                    );
                  },
                      child: const Text("Login")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
