import 'package:flutter/material.dart';
import 'package:apptest/Home/HomePage.dart';
import '../Favorite/Favorite.dart';
import '../History/History.dart';
import '../constant/color.dart';

class NavBarScreen extends StatefulWidget {
  final int initialPageIndex;
  NavBarScreen({Key? key, this.initialPageIndex = 0}) : super(key: key);
  @override
  _NavBarScreenState createState() => _NavBarScreenState(initialPageIndex);
}

class _NavBarScreenState extends State<NavBarScreen> {
  int currentIndex = 0;
  _NavBarScreenState(this.currentIndex);

  final List<Widget> screens = [HomePage(), Favorite(), History()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: BottomNavigationBar(
              backgroundColor: tText,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              iconSize: 25.0,
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border), label: "Favorite"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.access_time), label: "History"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
