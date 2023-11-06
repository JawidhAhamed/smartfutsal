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
        backgroundColor: Colors.black,
        title: Text('Forgot Password'),
      ),
      backgroundColor: Color.fromARGB(255, 1, 48, 92),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/password.jpg', // Replace with the actual image path
                width: 1800, // Adjust the width as needed
                height: 200, // Adjust the height as needed
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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'you@example.com',
                ),
              ),
              SizedBox(height: 120.0),
              ElevatedButton(
                onPressed: () {
                  _navigateToVerification(context);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 70),
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Send',
                  style: TextStyle(
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
