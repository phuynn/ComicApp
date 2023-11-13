import 'package:apptest/Login/LoginPage.dart';
import 'package:apptest/constant/color.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                    width: 300.0,
                    height: 300.0,
                    child: Image.asset("assets/logo.png"),
                  ),
              const Text("More than a reading app",
                style: TextStyle(color: tBtncolor),
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
                        builder: (context) => const LoginPage())
                    );
                  },
                  child: const Text("START",),



              ),
            ],
          ),

        ),

    ),

    );
  }
}


