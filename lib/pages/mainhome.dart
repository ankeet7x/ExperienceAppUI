import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Color _color = Colors.black12;

class _HomeState extends State<Home> {
  TextEditingController _textController = TextEditingController();
  Color _buttonBG = Colors.black12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Hello, Ankeet",
                  style: TextStyle(color: Colors.black45),
                ),
                Text(
                  "Let's travel",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black87),
                )
              ],
            ),
          ),
          backgroundColor: Colors.white70,
          elevation: 0.00001,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                icon: Icon(
                  Icons.notifications_none,
                  size: 40,
                  color: Colors.black87,
                ),
                onPressed: null,
              ),
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey.withAlpha(30)),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  height: 50,
                  width: 350,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextField(
                          controller: _textController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "Search"),
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ButtonTheme(
                          minWidth: 10,
                          buttonColor: _color,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: RaisedButton(
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              splashColor: Colors.yellow,
                              onPressed: () {
                                print("Button pressed");
                              }),
                        ),
                      )
                    ],
                  )),
            ),
            sizedBoxGap(),
            buildTypeRow(),
            sizedBoxGap()
          ],
        ),
      ),
    );
  }
}

buildTypeRow() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ButtonTheme(
          minWidth: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: RaisedButton(
            color: _color,
            onPressed: () => print("Button"),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.whatshot,
                  color: Colors.white,
                ),
                Text(
                  "Mountain",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
        ButtonTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: RaisedButton(
            onPressed: () => print("Button"),
            color: _color,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.swap_horizontal_circle,
                  color: Colors.white,
                ),
                Text("Forest", style: TextStyle(color: Colors.white))
              ],
            ),
          ),
        ),
        ButtonTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: RaisedButton(
            color: _color,
            onPressed: () => print("Button"),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.swap_horizontal_circle,
                  color: Colors.white,
                ),
                Text(
                  "Cruise",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

sizedBoxGap() {
  return SizedBox(
    height: 10,
  );
}
