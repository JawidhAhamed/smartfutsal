import 'package:flutter/material.dart';

class storePage extends StatelessWidget {
  const storePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: screenWidth - 50,
                  margin: EdgeInsets.fromLTRB(20, 40, 0, 0),
                  child: Text("Discover your favourite equipments",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          Container(
            child: Stack(
              children: [
                Expanded(
                  child: Container(
                    width: screenWidth - 80,
                    margin: EdgeInsets.fromLTRB(20, 20, 40, 0),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
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
          ),
          Container(
              child: Row(
            children: [
              Container(
                width: screenWidth - 50,
                margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text("Categories",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          )),
          Container(
            child: Row(
              children: [
                Container(
                  width: screenWidth / 3 - 10,
                  margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Image.asset('assets/equipments.png'),
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
