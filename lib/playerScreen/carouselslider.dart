import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smartfutsal/playerScreen/longPressPage.dart';

class carousel extends StatelessWidget {
  const carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 550,
          // Adjust the carousel height as needed
          enableInfiniteScroll:
              true, // Set to true if you want an infinite loop
          viewportFraction: 0.8,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 1),
          initialPage: 1, // Adjust the interval between slides

          // Display only one item at a time
        ),
        items: [
          // First Image Stack
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const longPressPage(),
                ),
              );
            },
            child: Column(
              // alignment: Alignment.center,
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const longPressPage(),
                ),
              );
            },
            /*onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const secondPage(),
                          ),
                        );
                      },*/
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const longPressPage(),
                ),
              );
            },
            /* onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const secondPage(),
                          ),
                        );
                      },*/
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
    );
  }
}
