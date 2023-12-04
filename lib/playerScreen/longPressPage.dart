import 'package:flutter/material.dart';
import 'package:smartfutsal/playerScreen/availableDate.dart';
import 'availableDate.dart';

class longPressPage extends StatelessWidget {
  const longPressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 24, 24, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 24, 24, 1),
        title: const Text('Futsal Courts'),
      ),
      body: Center(
        child: SingleChildScrollView(
          //const Text("Long Pressed"),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => cDate(),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20.0), // Adjust the radius as needed
                  child: Image.asset(
                    'assets/cricket.jpg', // Replace with your image URL
                    width: 250.0, // Adjust the width as needed
                    height: 250.0, // Adjust the height as needed
                    fit: BoxFit.cover, // Choose the appropriate BoxFit
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'FOOT BALL',
                style: TextStyle(
                  color: Colors.white,
                  // You can change the text color
                  fontSize: 20, // You can change the text size
                  fontWeight: FontWeight.bold,
                  // You can change the text style
                ),
              ),
              const SizedBox(
                height: 80,
              ),

              // Second Image
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => cDate(),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20.0), // Adjust the radius as needed
                  child: Image.asset(
                    'assets/football.jpg', // Replace with your image URL
                    width: 250.0, // Adjust the width as needed
                    height: 250.0, // Adjust the height as needed
                    fit: BoxFit.cover, // Choose the appropriate BoxFit
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'CRICKET',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 80,
              ),

              // Add more images as needed
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => cDate(),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20.0), // Adjust the radius as needed
                  child: Image.asset(
                    'assets/badminton.jpg', // Replace with your image URL
                    width: 250.0, // Adjust the width as needed
                    height: 250.0, // Adjust the height as needed
                    fit: BoxFit.cover, // Choose the appropriate BoxFit
                  ),
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                'BADMINTON',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
