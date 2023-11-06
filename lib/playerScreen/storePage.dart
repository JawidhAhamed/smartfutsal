import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'longPressPage.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

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
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) => const Carousel(),
                    //   ),
                    // );
                  },
                  child: Container(
                    width: screenWidth / 3 - 10,
                    margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Image.asset('assets/equipments.png'),
                  ),
                ),
                Container(
                  width: screenWidth / 3 - 10,
                  margin: EdgeInsets.fromLTRB(5, 20, 0, 0),
                  child: Image.asset('assets/boots.png'),
                ),
                Container(
                  width: screenWidth / 3 - 10,
                  margin: EdgeInsets.fromLTRB(5, 20, 0, 0),
                  child: Image.asset('assets/sportskit.png'),
                ),
              ],
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 550,
                enableInfiniteScroll: true,
                viewportFraction: 0.8,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 1),
                initialPage: 1,
              ),
              items: [
                // First Image Stack
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) => const LongPressPage(),
                    //   ),
                    // );
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 450,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset('assets/equipments.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                // Second Image Stack
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) => const longPressPage(),
                    //   ),
                    // );
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 450,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset('assets/sportskit.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) => const longPressPage(),
                    //   ),
                    // );
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 450,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset('assets/boots.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
