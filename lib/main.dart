import 'package:flutter/material.dart';
import 'package:futsal/myHomePage.dart';
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

// class Futsal extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             color: Color.fromARGB(255, 6, 2, 23),
//             width: 400,
//             height: 900,
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text('TIME TO GRAB YOUR TIME SLOT',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 25)),
//                   ElevatedButton(
//                       child: const Text('BOOK NOW'),
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                           shape: StadiumBorder(),
//                           padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//                           primary: Color.fromARGB(255, 194, 0, 0)
//                           )
//                           )
//                 ]
//                 )
//                 )
//                 );
//   }
// }
