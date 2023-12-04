import 'dart:math';

import 'package:flutter/material.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 24, 24, 1),
        title: Text('Forgot Password'),
      ),
      backgroundColor: Color.fromRGBO(24, 24, 24, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'research.png', // Replace with the actual image path
                width: 150, // Adjust the width as needed
                height: 150, // Adjust the height as needed
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "CHECK IN YOUR MAIL!",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'for any question or prablems'
                ' please email us at ',
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(207, 207, 202, 202)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'jawidh@gmail.com',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 120.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(300, 70),
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'DONE',
                  style: TextStyle(
                    color: Color.fromRGBO(24, 24, 24, 1),
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
