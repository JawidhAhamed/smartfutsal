import 'dart:math';

import 'package:flutter/material.dart';
import 'verification.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({Key? key});

  void _navigateToVerification(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Verification(),
      ),
    );
  }

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
                'confusion.png', // Replace with the actual image path
                width: 150, // Adjust the width as needed
                height: 150, // Adjust the height as needed
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "FORGOT  YOUR PASSWORD?",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Enter your email Address we will send you'
                ' a link to reset your password',
                style: TextStyle(
                    fontSize: 19.0,
                    color: const Color.fromARGB(255, 227, 224, 213)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 45.0),
              TextFormField(
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18.0,
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.grey
                        .withOpacity(0.8), // Change the hint text color
                    // Change the font style of the hint text
                    fontSize: 16.0, // Change the font size of the hint text
                  ),
                  hintText: 'you@example.com',
                  hintStyle: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                    fontStyle: FontStyle.italic,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 120.0),
              ElevatedButton(
                onPressed: () {
                  _navigateToVerification(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(300, 70),
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Send',
                  style: TextStyle(
                    color: Color.fromRGBO(24, 24, 24, 1),
                    fontWeight: FontWeight.bold,
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
