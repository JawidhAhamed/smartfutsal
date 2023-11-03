import 'package:flutter/material.dart';
//import 'package:smartfutsal/Home%20Page/getStarted.dart';
//import 'package:smartfutsal/myHomePage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:smartfutsal/Home%20Page/getStarted.dart';
import 'package:smartfutsal/availableDate.dart';
import 'package:smartfutsal/choosetime.dart';
//import 'constants.dart';
//import 'package:smartfutsal/homePage.dart';
import 'package:smartfutsal/myHomePage.dart';
import 'package:smartfutsal/signup.dart';
import 'splashscreen.dart';
import 'signin.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Futsal',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(
            255, 255, 255, 1), // Setting the global background color
      ),
      //home: MyHomePage(),
      //home: const SplashScreen(),
      initialRoute: '/userHome',
      routes: {
        '/': (context) => const SplashScreen(),
        '/start': (context) => const getStarted(),
        '/login': (context) => const Signin(),
        '/register': (context) => const SignUp(),
        '/userHome': (context) => const MyHomePage(),
        '/date': (context) => cDate(),
        '/time': (context) => ChooseTime(),
      },
    );
  }
}
