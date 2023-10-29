import 'package:flutter/material.dart';
import 'package:smartfutsal/Home%20Page/getStarted.dart';
import 'package:smartfutsal/myHomePage.dart';
import 'package:device_preview/device_preview.dart';

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
        scaffoldBackgroundColor: Color.fromRGBO(
            255, 255, 255, 1), // Setting the global background color
      ),
      home: MyHomePage(),
    );
  }
}
