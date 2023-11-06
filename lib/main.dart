import 'package:flutter/material.dart';
//import 'package:smartfutsal/Home%20Page/getStarted.dart';
//import 'package:smartfutsal/myHomePage.dart';
import 'package:device_preview/device_preview.dart';
//import 'package:smartfutsal/mainScreen/getStarted.dart';
import 'package:smartfutsal/mainScreen/onboding_screen.dart';
import 'package:smartfutsal/playerScreen/details.dart';
import 'package:smartfutsal/playerScreen/homePage.dart';
import 'package:smartfutsal/playerScreen/storePage.dart';
import 'package:smartfutsal/test.dart';
import 'package:smartfutsal/playerScreen/availableDate.dart';
import 'package:smartfutsal/playerScreen/choosetime.dart';
//import 'constants.dart';
//import 'package:smartfutsal/homePage.dart';
import 'package:smartfutsal/playerScreen/myHomePage.dart';
import 'package:smartfutsal/mainScreen/signup.dart';
import 'package:smartfutsal/mainScreen/splashscreen.dart';
import 'package:smartfutsal/mainScreen/signin.dart';
import 'package:smartfutsal/playerScreen/profile/activityFeed.dart';
import 'package:smartfutsal/playerScreen/profile/settingUi.dart';

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
        scaffoldBackgroundColor: const Color.fromARGB(
            255, 255, 255, 255), // Setting the global background color
      ),
      //home: MyHomePage(),
      //home: const SplashScreen(),
      initialRoute: '/userHome',
      routes: {
        '/': (context) => const SplashScreen(),
        '/start': (context) => const OnbodingScreen(),
        '/login': (context) => const Signin(),
        '/register': (context) => const SignUp(),
        '/userHome': (context) => const MyHomePage(),
        '/date': (context) => cDate(),
        '/time': (context) => const ChooseTime(),
      },
    );
  }
}
