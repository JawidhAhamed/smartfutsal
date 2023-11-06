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
      backgroundColor: Color.fromRGBO(24, 24, 24, 1),
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
          // mage.asset(
          //   'Iassets/background_image.jpg', // Replace with the actual image path
          //   fit: BoxFit.finity,
          //   height: double.incover, // You can adjust the fit as needed
          //   width: double.infinity,
          // ),

          Container(
            width: screenWidth,
            margin: const EdgeInsets.fromLTRB(0, 150, 0, 0),
            // width: 150,
            height: 60,
            child: Image.asset(
              'assets/logo.png',
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: const Text(
                  'TO ENHANCE THE ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 35,
                      fontWeight: FontWeight.w900),
                ),
              ),
              const Text(
                'FUTSAL EXPERIENCE',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
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
                          context, '/userHome', (route) => false);
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, elevation: 10,
                      minimumSize: const Size(200, 50),
                      backgroundColor: Color.fromARGB(
                          255, 255, 255, 255), // Change the text color here
                    ),
                    child: const Text('Get Started',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
