import 'package:flutter/material.dart';
import 'fullchapter.dart';

class Nextchapter extends StatefulWidget {
  @override
  _Nextchapter createState() => _Nextchapter();
}

class _Nextchapter extends State<Nextchapter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Chapter 2 - Overcome adversity",
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
                child: Image.asset("./5-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
              ),
              Card(
                child: Image.asset("./6-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
              ),
              Card(
                child: Image.asset("./7-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
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
                      // Handle the action when the "Go back" button is pressed
                      // You can use Navigator.pop() to go back to the previous screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FullChapter(),
                        ),
                      );
                    },
                    child: Text('Go back'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Handle the action when the rating button is pressed
                      // You can navigate to a rating screen or perform any other action
                    },
                    child: Text('Next chapter'),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
