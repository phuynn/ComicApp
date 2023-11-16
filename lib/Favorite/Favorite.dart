import 'package:flutter/material.dart';
import '../common/color_extenstion.dart';
import '../common_widget/search_grid_cell.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoRiteState();
}

class _FavoRiteState extends State<Favorite> {
  List searchArr = [
    {"name": "Biography", "img": "assets/b1.jpg"},
    {"name": "Business", "img": "assets/b2.jpg"},
    {"name": "Children", "img": "assets/b3.jpg"},
    {"name": "Cookery", "img": "assets/b4.jpg"},
    {"name": "Fiction", "img": "assets/b5.jpg"},
    {"name": "Cookery", "img": "assets/b6.jpg"},
    {"name": "Fiction", "img": "assets/b7.jpg"},
    {"name": "Fiction", "img": "assets/b8.jpg"},
    {"name": "Cookery", "img": "assets/b9.jpg"},
    {"name": "Fiction", "img": "assets/b10.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: TColor.textboxColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      decoration: InputDecoration(
                        // contentPadding: const EdgeInsets.symmetric(
                        //     vertical: 15, horizontal: 8),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: TColor.textColor),
                        hintText: "Search books, authors",
                        labelStyle: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.75,
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                  itemCount: searchArr.length,
                  itemBuilder: (context, index) {
                    var sObj = searchArr[index] as Map? ?? {};
                    return SearchGridCell(sObj: sObj, index: index);
                  },
                ),
              ),
            ],
          )),
    );
  }
}
