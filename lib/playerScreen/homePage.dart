import 'package:flutter/material.dart';
import 'package:smartfutsal/mainScreen/getStarted.dart';
import 'profile/profile.dart';
import 'package:smartfutsal/playerScreen/constants.dart';
import 'package:smartfutsal/playerScreen/homescreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //     title: Text('Home'),
      //     backgroundColor: Color.fromARGB(255, 71, 124, 81),
      //     leading: Padding(
      //       padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      //       child: Image.asset(
      //         'assets/logo.png', // Replace with your logo image path
      //         width: 80,
      //         height: 80,
      //       ),
      //     )),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Profile(),
                    ),
                  );
                },
                child: Container(
                  width: (screenWidth / 5) - 20,
                  margin: EdgeInsets.fromLTRB(10, 40, 10, 0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(prfl),
                  ),
                ),
              ),
              Container(
                width: (3 * screenWidth / 5),
                margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Text("WELCOME!",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w900)),
              ),
              Container(
                width: (screenWidth / 5) - 20,
                margin: EdgeInsets.fromLTRB(20, 40, 0, 0),
                child: IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {
                    // Implement your search functionality here
                  },
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: screenWidth - 140,
                margin: EdgeInsets.fromLTRB(20, 20, 120, 0),
                child: Text("Find the courts by your wish",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    )),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: screenWidth - 80,
                  margin: EdgeInsets.fromLTRB(20, 20, 60, 0),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
              Container(
                width: screenWidth / 3 - 10,
                margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Implement your search functionality here
                  },
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
            child: Row(
              children: [
                Container(
                  width: (screenWidth / 4) - 15,
                  margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const getStarted()),
                      );
                    }, // Disables the button
                    child: const Text(
                      'News',
                      style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold,
                        color: Color.fromARGB(
                            255, 0, 0, 0), // Customize text color
                      ),
                    ),
                  ),
                ),
                Container(
                  width: (screenWidth / 4),
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: TextButton(
                    onPressed: null, // Disables the button
                    child: Text(
                      'Live Score',
                      style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(
                            255, 0, 0, 0), // Customize text color
                      ),
                    ),
                  ),
                ),
                Container(
                  width: (screenWidth / 4) - 10,
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: TextButton(
                    onPressed: null, // Disables the button
                    child: Text(
                      'Offers',
                      style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(
                            255, 0, 0, 0), // Customize text color
                      ),
                    ),
                  ),
                ),
                Container(
                  width: (screenWidth / 4) - 25,
                  margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                  child: TextButton(
                    onPressed: null, // Disables the button
                    child: Text(
                      'More',
                      style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(
                            255, 0, 0, 0), // Customize text color
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: screenWidth - 40,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(24, 24, 24, 1),
                      Color.fromRGBO(24, 24, 24, 1),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 71, 124, 81),
                  // border: Border.all(
                  //     color: Color.fromARGB(255, 71, 124, 81), width: 1),
                ),
                height: 250,
                child: Row(
                  children: [
                    Container(
                      width: screenWidth - 270,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        children: [
                          IconButton(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                            icon: Icon(Icons.assistant_navigation),
                            onPressed: () {
                              // Implement your search functionality here
                            },
                          ),
                          Container(
                            child: Text(
                              'View Map',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                        width: screenWidth - 180,
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 243, 243, 243),
                              Color.fromRGBO(24, 24, 24, 1),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 71, 124, 81),
                          // border: Border.all(
                          //     color: Color.fromARGB(255, 71, 124, 81), width: 1),
                        ),
                        height: 200,
                        child: Image.asset("assets/gmap.png")),

                    // Column(
                    //   children: [
                    //     Text('Futsal Courts'),
                    //     Text('Futsal Courts'),
                    //     Text('Futsal Courts'),
                    //   ],
                    // )
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: screenWidth - 40,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(24, 24, 24, 1),
                  Color.fromRGBO(24, 24, 24, 1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 71, 124, 81),
              // border: Border.all(
              //     color: Color.fromARGB(255, 71, 124, 81), width: 1),
            ),
            height: 250,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(40, 50, 0, 0),
                  width: screenWidth / 2,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                    children: [
                      Container(
                          height: 60,
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Image.asset(
                            'logo.png',
                          )),
                      Container(
                        child: Text(
                          'TO GRAB YOUR',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      Container(
                        child: Text(
                          'TIME SLOT',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      Container(
                        width: screenWidth / 2,
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const Homescreen(),
                              ),
                            );
                          },
                          child: Image.asset('Booknowlogo.png'),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    width: screenWidth / 2 - 40,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    height: 300,
                    child: Image.asset("Booknow.png")),
              ],
            ),
          ),
        ],
      )

          // Your Content

          ),
    );
  }
}
