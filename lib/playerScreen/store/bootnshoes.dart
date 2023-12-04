import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smartfutsal/playerScreen/store/equipments.dart';
import '../longPressPage.dart';

class Bootsnshoes extends StatelessWidget {
  const Bootsnshoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenWidth - 50,
              margin: EdgeInsets.fromLTRB(20, 40, 0, 0),
              child: Text("Discover your favorite equipment",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            Stack(
              children: [
                Container(
                  width: screenWidth - 80,
                  margin: EdgeInsets.fromLTRB(20, 20, 40, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth - 80,
                  margin: EdgeInsets.fromLTRB(200, 25, 20, 0),
                  child: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Implement your search functionality here
                    },
                  ),
                )
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const Equipments(),
                      ),
                    );
                  },
                  child: Container(
                    width: screenWidth,
                    // margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    // child: Image.asset('assets/equipments.png'),
                  ),
                ),
                Container(
                  child: Image.network(
                    "https://cdn.lovellsports.com/features/splash-pages/soccer/boots/nike-boots-new-2.jpg?width=540",
                    height: 300,
                    width: 300,
                  ),
                ),
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "LKR 7000",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("1 sold"),
                    Text("Rugger")
                  ],
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
