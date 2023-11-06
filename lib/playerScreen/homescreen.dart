import 'dart:ui';
import 'package:flutter/material.dart';
//import 'package:flutter_app/firstPage.dart';
//import 'package:flutter_app/secondPage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smartfutsal/playerScreen/longPressPage.dart';

//import 'package:device_preview/device_preview.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Color.fromARGB(255, 0, 0, 0).withOpacity(
                      0.6), // Adjust the opacity to change brightness
                  BlendMode
                      .darken, // You can use different blend modes to achieve different effects
                ),
                child: Image.asset(
                  'assets/stad1.jpg',
                ),
              ),
              // BackdropFilter(
              //   filter: ImageFilter.blur(sigmaX: 50, sigmaY: 5),
              //   child: Container(
              //     color: Color.fromARGB(255, 49, 41, 201).withOpacity(0.5),
              //     width: double.infinity,
              //     height: double.infinity,
              //   ),
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: AppBar(
                      backgroundColor: Color.fromRGBO(24, 24, 24, 1),
                      title: const Text('Futsal Courts'),
                      leading: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Image.asset(
                          'assets/logo.png',
                          cacheWidth: 100,
                          width: 80,
                          height: 80,
                        ),
                      ),
                      actions: [
                        IconButton(
                          icon: const Icon(Icons.search),
                          tooltip: 'Search',
                          onPressed: () {
                            // Add your search functionality here
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.menu),
                          tooltip: 'Navigation menu',
                          onPressed: () {
                            // Add your menu functionality here
                          },
                        ),
                      ],
                    ),
                  ),

                  // Container(
                  //   padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         child: Image.asset(
                  //           'assets/logo.png',
                  //           cacheWidth: 100,
                  //           width: 80,
                  //           height: 80,
                  //         ),
                  //       ),
                  //       Container(
                  //         child: Text(
                  //           'Futsal Courts',
                  //           style: TextStyle(color: Colors.white),
                  //         ),
                  //       ),
                  //       Container(
                  //         child: IconButton(
                  //           color: Colors.white,
                  //           icon: const Icon(Icons.search),
                  //           tooltip: 'Search',
                  //           onPressed: () {
                  //             // Add your search functionality here
                  //           },
                  //         ),
                  //       ),
                  //       Container(
                  //         child: IconButton(
                  //           color: Colors.white,
                  //           icon: const Icon(Icons.menu),
                  //           tooltip: 'Navigation menu',
                  //           onPressed: () {
                  //             // Add your menu functionality here
                  //           },
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  const SizedBox(height: 40),
                  CarouselSlider(
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
                              builder: (BuildContext context) =>
                                  const longPressPage(),
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
                                child: Image.asset('assets/stad1.jpg'),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              // Adjust the position as needed
                              child: const Text(
                                'MANCHESTER UNITED',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 245, 245, 245),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Container(
                              // Adjust the position as needed
                              child: const Text(
                                'COLOMBO',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 247, 244, 244),
                                  fontSize: 14,
                                ),
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
                              builder: (BuildContext context) =>
                                  const longPressPage(),
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
                                child: Image.asset('assets/stad2.jpg'),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              // Adjust the position as needed
                              child: const Text(
                                'REAL MADRID',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 245, 245, 245),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Container(
                              // Adjust the position as needed
                              child: const Text(
                                'GAMPOLA',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 247, 244, 244),
                                  fontSize: 14,
                                ),
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
                              builder: (BuildContext context) =>
                                  const longPressPage(),
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
                                child: Image.asset('assets/stad3.jpg'),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              // Adjust the position as needed
                              child: const Text(
                                'AL NASR',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 245, 245, 245),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Container(
                              // Adjust the position as needed
                              child: const Text(
                                'KINNIYA',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 247, 244, 244),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ));
  }
}
