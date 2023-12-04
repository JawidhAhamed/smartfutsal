import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Equipments extends StatelessWidget {
  const Equipments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenWidth - 50,
              margin: const EdgeInsets.fromLTRB(20, 40, 0, 0),
              child: const Text("Discover your favorite equipment",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            Stack(
              children: [
                Container(
                  width: screenWidth - 80,
                  margin: const EdgeInsets.fromLTRB(20, 20, 40, 0),
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
                  margin: const EdgeInsets.fromLTRB(200, 25, 20, 0),
                  child: IconButton(
                    icon: const Icon(Icons.search),
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
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth / 3 - 10,
                        margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(232, 229, 229, 1),
                                Color.fromRGBO(233, 230, 230, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 71, 124, 81),
                            border: Border.all(width: 2)
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 71, 124, 81), width: 1),
                            ),
                        height: 135,
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/10844/10844581.png",
                          height: 10,
                          width: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "LKR 400",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("20 sold"),
                          Text("Shuttlecock")
                        ],
                      ))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) => const Carousel(),
                    //   ),
                    // );
                  },
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth / 3 - 10,
                        margin: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(232, 229, 229, 1),
                                Color.fromRGBO(233, 230, 230, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 71, 124, 81),
                            border: Border.all(width: 2)
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 71, 124, 81), width: 1),
                            ),
                        height: 135,
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/10465/10465938.png",
                          height: 10,
                          width: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "LKR 2100",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("15 sold"),
                          Text("Rackets")
                        ],
                      ))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) => const Carousel(),
                    //   ),
                    // );
                  },
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth / 3 - 10,
                        margin: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(232, 229, 229, 1),
                                Color.fromRGBO(233, 230, 230, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 71, 124, 81),
                            border: Border.all(width: 2)
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 71, 124, 81), width: 1),
                            ),
                        height: 135,
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/5496/5496234.png",
                          height: 10,
                          width: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "LKR 8900",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("30 sold"),
                          Text("VolleyBall")
                        ],
                      ))
                    ],
                  ),
                ),
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
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth / 3 - 10,
                        margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(232, 229, 229, 1),
                                Color.fromRGBO(233, 230, 230, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 71, 124, 81),
                            border: Border.all(width: 2)
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 71, 124, 81), width: 1),
                            ),
                        height: 135,
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/2655/2655990.png",
                          height: 10,
                          width: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "LKR 6700",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("48 sold"),
                          Text("FootBall")
                        ],
                      ))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) => const Carousel(),
                    //   ),
                    // );
                  },
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth / 3 - 10,
                        margin: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(232, 229, 229, 1),
                                Color.fromRGBO(233, 230, 230, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 71, 124, 81),
                            border: Border.all(width: 2)
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 71, 124, 81), width: 1),
                            ),
                        height: 135,
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/8022/8022326.png",
                          height: 10,
                          width: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "LKR 480",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("60 sold"),
                          Text("Tennis Ball")
                        ],
                      ))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) => const Carousel(),
                    //   ),
                    // );
                  },
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth / 3 - 10,
                        margin: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(232, 229, 229, 1),
                                Color.fromRGBO(233, 230, 230, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 71, 124, 81),
                            border: Border.all(width: 2)
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 71, 124, 81), width: 1),
                            ),
                        height: 135,
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/5140/5140406.png",
                          height: 10,
                          width: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "LKR 4500",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("23 sold"),
                          Text("Bat")
                        ],
                      ))
                    ],
                  ),
                ),
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
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth / 3 - 10,
                        margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(232, 229, 229, 1),
                                Color.fromRGBO(233, 230, 230, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 71, 124, 81),
                            border: Border.all(width: 2)
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 71, 124, 81), width: 1),
                            ),
                        height: 135,
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/1099/1099680.png",
                          height: 10,
                          width: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "LKR 2000",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("6 sold"),
                          Text("Leather Ball")
                        ],
                      ))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) => const Carousel(),
                    //   ),
                    // );
                  },
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth / 3 - 10,
                        margin: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(232, 229, 229, 1),
                                Color.fromRGBO(233, 230, 230, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 71, 124, 81),
                            border: Border.all(width: 2)
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 71, 124, 81), width: 1),
                            ),
                        height: 135,
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/3440/3440325.png",
                          height: 10,
                          width: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "LKR 1800",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("12 sold"),
                          Text("Wicket")
                        ],
                      ))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) => const Carousel(),
                    //   ),
                    // );
                  },
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth / 3 - 10,
                        margin: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(232, 229, 229, 1),
                                Color.fromRGBO(233, 230, 230, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 71, 124, 81),
                            border: Border.all(width: 2)
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 71, 124, 81), width: 1),
                            ),
                        height: 135,
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/3900/3900026.png",
                          height: 10,
                          width: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "LKR 1500",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("4 sold"),
                          Text("Kneeguard")
                        ],
                      ))
                    ],
                  ),
                ),
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
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth / 3 - 10,
                        margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(232, 229, 229, 1),
                                Color.fromRGBO(233, 230, 230, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 71, 124, 81),
                            border: Border.all(width: 2)
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 71, 124, 81), width: 1),
                            ),
                        height: 135,
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/1540/1540518.png",
                          height: 10,
                          width: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "LKR 1300",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("3 sold"),
                          Text("Gloves")
                        ],
                      ))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) => const Carousel(),
                    //   ),
                    // );
                  },
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth / 3 - 10,
                        margin: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(232, 229, 229, 1),
                                Color.fromRGBO(233, 230, 230, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 71, 124, 81),
                            border: Border.all(width: 2)
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 71, 124, 81), width: 1),
                            ),
                        height: 135,
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/10646/10646277.png",
                          height: 10,
                          width: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          child: const Column(
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
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) => const Carousel(),
                    //   ),
                    // );
                  },
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth / 3 - 10,
                        margin: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(232, 229, 229, 1),
                                Color.fromRGBO(233, 230, 230, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 71, 124, 81),
                            border: Border.all(width: 2)
                            // border: Border.all(
                            //     color: Color.fromARGB(255, 71, 124, 81), width: 1),
                            ),
                        height: 135,
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/10466/10466111.png",
                          height: 10,
                          width: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "LKR 8900",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("6 sold"),
                          Text("Basketball")
                        ],
                      ))
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
