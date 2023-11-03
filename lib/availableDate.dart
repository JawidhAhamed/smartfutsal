import 'package:flutter/material.dart';
import 'homePage.dart';

class cDate extends StatefulWidget {
  @override
  State<cDate> createState() => _cDateState();
}

class _cDateState extends State<cDate> {
  @override
  Widget build(BuildContext context) {
    // Taking the size of the screen
    // double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            title: Text('Available Date'),
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
          padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                child: Row(children: <Widget>[
                  Text(
                    "AVAILABLE DATE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SourceSans3-VariableFont_wght'),
                  ),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(100, 100)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      elevation: MaterialStateProperty.all<double>(29.0),
                    ),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/time', (route) => false);
                    },
                    child: Text(
                      'SUN',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(100, 100)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      elevation: MaterialStateProperty.all<double>(29.0),
                    ),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/time', (route) => false);
                    },
                    child: Text(
                      'MON',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(100, 100)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      elevation: MaterialStateProperty.all<double>(29.0),
                    ),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/time', (route) => false);
                    },
                    child: Text(
                      'TUE',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(100, 100)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      elevation: MaterialStateProperty.all<double>(29.0),
                    ),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/time', (route) => false);
                    },
                    child: Text(
                      'WED',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(100, 100)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      elevation: MaterialStateProperty.all<double>(29.0),
                    ),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/time', (route) => false);
                    },
                    child: Text(
                      'THUR',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(100, 100)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 234, 187, 14)),
                      elevation: MaterialStateProperty.all<double>(29.0),
                    ),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/time', (route) => false);
                    },
                    child: Text(
                      'FRI',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(50, 50)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 255, 255)),
                  elevation: MaterialStateProperty.all<double>(29.0),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/time', (route) => false);
                },
                child: Text(
                  'SAT',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      fontFamily: 'SourceSans3-VariableFont_wght'),
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
        ));
  }
}
