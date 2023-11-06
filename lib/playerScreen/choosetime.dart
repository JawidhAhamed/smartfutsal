import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:smartfutsal/playerScreen/details.dart';

class ChooseTime extends StatelessWidget {
  //stl (short)
  const ChooseTime({super.key});

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    // double scrHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 24, 24, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 24, 24, 1),
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Image.asset(
            f1,
            width: 80,
            height: 80,
          ),
        ),
        // last vara iconkku
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 100),
              const Text(
                "CHOOSE THE TIME",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
              const SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(9, 5, 4.5, 5),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "6:00 AM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4.5, 5, 4.5, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "7:00 AM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4.5, 5, 9, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "8:00 AM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(9, 5, 4.5, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "9:00 AM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4.5, 5, 4.5, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "10:00 AM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4.5, 5, 9, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "11:00 AM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(9, 5, 4.5, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "12:00 PM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4.5, 5, 4.5, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "1:00 PM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4.5, 5, 9, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "2:00 PM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(9, 5, 4.5, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "3:00 PM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4.5, 5, 4.5, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "4:00 PM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4.5, 5, 9, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "5:00 PM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(9, 5, 4.5, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "6:00 PM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4.5, 5, 4.5, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "7:00 PM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4.5, 5, 9, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "8:00 PM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(9, 5, 4.5, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "9:00 PM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4.5, 5, 4.5, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "10:00 PM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4.5, 5, 9, 5),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                          minimumSize: Size((scrWidth / 3) - 12, 50),
                          maximumSize: Size((scrWidth / 3) - 12, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(05)), // Button border radius
                          ),
                        ),
                        child: const Column(children: <Widget>[
                          Text(
                            "11:00 PM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            av,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Container(
                margin: const EdgeInsets.fromLTRB(4.5, 5, 4.5, 5),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      backgroundColor: Colors.white,
                      minimumSize: Size((scrWidth / 3) - 12, 50),
                      maximumSize: Size((scrWidth / 3) - 12, 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(05)), // Button border radius
                      ),
                    ),
                    child: const Column(children: <Widget>[
                      Text(
                        "9:00 PM",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        av,
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
