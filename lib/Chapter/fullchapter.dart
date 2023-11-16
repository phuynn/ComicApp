import 'package:flutter/material.dart';
import '../Chapter/chitiet.dart';
import '../Chapter/nextchapter.dart';

class FullChapter extends StatefulWidget {
  const FullChapter({Key? key}) : super(key: key);
  @override
  _FullChapterState createState() => _FullChapterState();
}

class _FullChapterState extends State<FullChapter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Chapter 1 - Life and death",
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
        ),
        backgroundColor: Colors.black26,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 30),
              ),
              Card(
                child: Image.asset("./1-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
              ),
              Card(
                child: Image.asset("./2-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
              ),
              Card(
                child: Image.asset("./3-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
              ),
              Card(
                child: Image.asset("./4-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30),
              ),
              Card(
                child: Image.asset("./8-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      // Handle the action when the rating button is pressed
                      // You can navigate to a rating screen or perform any other action
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Nextchapter(),
                        ),
                      );
                    },
                    child: Text('Next chapter'),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
