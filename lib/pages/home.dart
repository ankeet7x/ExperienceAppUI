import 'package:flutter/material.dart';

import 'mainpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 400,
            child: Image.asset('assets/tomato_chill.png'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Escape the",
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
          Text(
            "Ordinary life",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
          ),
          SizedBox(
            height: 2,
          ),
           
          Text(
            "Discover great experiences around you",
            style: TextStyle( fontWeight: FontWeight.normal, fontSize: 18),
          ),
          Text(
            "and make your life interesting",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: ButtonTheme(
              height: 45,
              minWidth: 300,
              child: RaisedButton(
                color: Colors.red,
                child: Text(
                  "Get started",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.red)),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> MainPage())),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ButtonTheme(
              minWidth: 300,
              height: 45,
              child: RaisedButton(
                child: Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                splashColor: Colors.red,
                color: Colors.orange[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
