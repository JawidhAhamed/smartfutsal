import 'package:flutter/material.dart';
import 'dart:ui';

//import 'package:smartfutsal/homePage.dart';

class getStarted extends StatefulWidget {
  const getStarted({super.key});

  @override
  State<getStarted> createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Background Image
          // Image.asset(
          //   'assets/p3.jpg', // Replace with your image path
          //   width: double.infinity,
          //   height: double.infinity,
          //   fit: BoxFit.cover,
          // ),

          // Blurred Background
          // BackdropFilter(
          //   filter: ImageFilter.blur(
          //       sigmaX: 5, sigmaY: 5), // Adjust blur intensity as needed
          //   child: Container(
          //     color: Color.fromARGB(255, 255, 255, 255)
          //         .withOpacity(1), // Adjust opacity as needed
          //     width: double.infinity,
          //     height: double.infinity,
          //   ),
          // ),

          // Your Content

          Container(
            width: screenWidth,
            margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
            // width: 150,
            height: 60,
            child: Image.asset(
              'assets/logob.png',
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: const Text(
                  'TO ENHANCE THE ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w900),
                ),
              ),
              const Text(
                'FUTSAL EXPERIENCE',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 90, 0, 0),
            height: 150,
            child: Image.asset(
              'assets/fplayer.png',
            ),
          ),
          Container(
            width: screenWidth,
            margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/login', (route) => false);
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, elevation: 10,
                      minimumSize: const Size(200, 50),
                      backgroundColor: const Color.fromARGB(
                          255, 71, 124, 81), // Change the text color here
                    ),
                    child: const Text('Get Started',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
