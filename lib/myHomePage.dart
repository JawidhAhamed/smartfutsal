// lib/main.dart
import 'package:flutter/material.dart';
import 'package:futsal/Home%20Page/storePage.dart';
import 'accountPage.dart';
import 'homePage.dart';
import 'court.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [HomePage(), Court(), AccountPage(), storePage()];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 230, 0, 0),
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: const Color.fromARGB(
            255, 237, 213, 0), // Change the selected item color
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: 'Court',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_rounded),
            label: 'storePage',
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => NewBooking()));
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
