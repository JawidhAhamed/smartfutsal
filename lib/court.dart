import 'package:flutter/material.dart';
import 'package:futsal/availableDate.dart';

class Court extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Taking the size of the screen
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            title: Text('Courts'),
            backgroundColor: Color.fromRGBO(3, 5, 21, 1),
            leading: Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Image.asset(
                'assets/logo.png', // Replace with your logo image path
                width: 80,
                height: 80,
              ),
            )),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                    width: (screenWidth / 2),
                    height: 130,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => cDate()),
                          );
                        },
                        child: Ink.image(
                          image: AssetImage("assets/Courts3.png"),
                          padding: EdgeInsets.fromLTRB(5, 30, 5, 5),
                        ))),
                Container(
                    width: (screenWidth / 2),
                    height: 130,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => cDate()),
                          );
                        },
                        child: Ink.image(
                          image: AssetImage("assets/Courts3.png"),
                          padding: EdgeInsets.all(30.0),
                        ))),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    width: (screenWidth / 2) - 10,
                    height: 150,
                    child: Image.asset("assets/Courts3.png"),
                    margin: EdgeInsets.fromLTRB(5, 10, 5, 5)),
                Container(
                  width: (screenWidth / 2) - 10,
                  height: 150,
                  child: Image.asset("assets/Courts1.png"),
                  margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                ),
              ],
            ),
            Container(
                child: Image.asset(
                  "assets/Courts3.png",
                  fit: BoxFit.cover,
                ),
                margin: EdgeInsets.fromLTRB(5, 10, 5, 5)),
            Container(
                child: Image.asset(
                  "assets/Courts2.png",
                  fit: BoxFit.cover,
                ),
                margin: EdgeInsets.fromLTRB(5, 10, 5, 5)),
            Container(
                child: Image.asset(
                  "assets/Courts1.png",
                  fit: BoxFit.cover,
                ),
                margin: EdgeInsets.fromLTRB(5, 10, 5, 5)),
          ],
        )));
  }
}
