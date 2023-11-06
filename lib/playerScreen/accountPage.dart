import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:smartfutsal/playerScreen/profilePic.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: const Color.fromARGB(255, 3, 5, 21),
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Image.asset(
              'assets/logo.png', // Replace with your logo image path
              width: 80,
              height: 80,
            ),
          )),
      body: Column(
        children: <Widget>[
          ProfilePic(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Click Me',
                style: TextStyle(color: Colors.white), // Set text color
              ),
            ),
          )
        ],
      ),
    );
  }
}

FlatButton(
    {required Null Function() onPressed,
    required Text child,
    required MaterialColor color,
    required MaterialColor splashColor}) {}
