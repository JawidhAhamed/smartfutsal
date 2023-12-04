import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:smartfutsal/mainScreen/onboding_screen.dart';
import 'package:smartfutsal/playerScreen/availableDate.dart';
import 'package:smartfutsal/playerScreen/choosetime.dart';
import 'package:smartfutsal/playerScreen/myHomePage.dart';
import 'package:smartfutsal/mainScreen/signup.dart';
import 'package:smartfutsal/mainScreen/signin.dart';
import 'package:smartfutsal/services/auth_services.dart';
import 'package:smartfutsal/services/logout.dart';

void main() async {
  final AuthService _auth = AuthService();
  String token = await _auth.getToken();
  String role = await _auth.getRole();
  String email = await _auth.getEmail();

  runApp(
    DevicePreview(
      builder: (context) =>
          MyApp(token: token, role: role, email: email), // Wrap your app
    ),
  );
}

class MyApp extends StatefulWidget {
  final String token;
  final String role;
  final String email;
  const MyApp(
      {super.key,
      required this.token,
      required this.role,
      required this.email});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    print(widget.token);
    print(widget.role);
    print(widget.email);
    String? loginChecker;

    if (widget.token == 'none' && widget.role == 'none') {
      loginChecker = '/';
    } else if (widget.token != 'none' && widget.role == 'player') {
      loginChecker = '/userHome';
    } else {
      loginChecker = '/';
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Futsal',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(
            255, 255, 255, 255), // Setting the global background color
      ),
      //home: MyHomePage(),
      //home: const SplashScreen(),
      initialRoute: loginChecker,
      routes: {
        '/': (context) => const OnbodingScreen(),
        '/start': (context) => const OnbodingScreen(),
        '/login': (context) => const Signin(),
        '/logout': (context)=> const Logout(),
        '/register': (context) => const SignUp(),
        '/userHome': (context) => const MyHomePage(),
      },
    );
  }
}
