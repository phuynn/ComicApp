import 'package:apptest/Login/ForgotPage.dart';
import 'package:apptest/Login/LoginPage.dart';

import 'package:flutter/material.dart';

import '../constant/color.dart';
import 'Profile.dart';
import 'Readding.dart';
import '../Chapter/chitiet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> newimg = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
    "assets/5.png",
    "assets/6.png",
    "assets/7.png",
    "assets/8.png",
    "assets/9.png",
    "assets/10.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [Color(0x9CD498F1), Colors.white])),
          child: ListView(
            children: [
              Center(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                showMenu(
                                    context: context,
                                    position: const RelativeRect.fromLTRB(
                                        0, 125.0, 0, 0),
                                    items: <PopupMenuEntry>[
                                      PopupMenuItem(
                                        child: ListTile(
                                          contentPadding:
                                              const EdgeInsets.all(3.0),
                                          leading: const Icon(
                                              Icons.person_outline_sharp),
                                          title: const Text("Profile"),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProfilePage()));
                                          },
                                        ),
                                      ),
                                      PopupMenuItem(
                                        child: ListTile(
                                          contentPadding: EdgeInsets.all(3.0),
                                          leading: Icon(Icons.logout_outlined),
                                          title: Text("Logout"),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        LoginPage()));
                                          },
                                        ),
                                      ),
                                    ]);
                              },
                              child: ClipOval(
                                child: SizedBox(
                                  width: 70.0,
                                  height: 70.0,
                                  child: Image.asset("assets/logo.png"),
                                ),
                              ),
                            ),
                            RichText(
                                text: const TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: "Welcome\n",
                                style: TextStyle(fontSize: 14.0, color: tText),
                              ),
                              TextSpan(
                                text: "ntphuyen2901@gmail.com",
                                style: TextStyle(
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold,
                                    color: tText),
                              ),
                            ])),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Let's explore",
                            style: TextStyle(fontSize: 17.0, color: tText),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Your reading list",
                            style: TextStyle(
                                fontSize: 27.0,
                                fontWeight: FontWeight.bold,
                                color: tText),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 60.0,
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            filled: true,
                            fillColor: const Color(0x80FFFFFF),
                            hintText: "Search...",
                            prefixIcon: const Icon(Icons.search),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: const Row(
                          children: [
                            Text(
                              "Trending",
                              style: TextStyle(
                                  color: tText,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            SizedBox(
                              width: 215.0,
                            ),
                            Text("See more"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        height: 200.0,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: newimg.length - 5,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailScreen(newimg[index]),
                                      ));
                                },
                                child: Container(
                                  width: 110.0,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Center(
                                    child: Image.asset(
                                      newimg[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: const Row(
                          children: [
                            Text(
                              "New Release",
                              style: TextStyle(
                                  color: tText,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            SizedBox(
                              width: 195.0,
                            ),
                            Text("See more"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        height: 150.0,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: newimg.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailScreen(newimg[index]),
                                      ));
                                },
                                child: Container(
                                  width: 110.0,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Center(
                                    child: Image.asset(
                                      newimg[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
