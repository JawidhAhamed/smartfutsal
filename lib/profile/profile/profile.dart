import 'package:flutter/material.dart';
import 'editprofile.dart';
import 'package:smartfutsal/constants.dart';
import 'profilewidget.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}); // Use 'Key?' instead of 'super.key'

  @override
  Widget build(BuildContext context) {
    // var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/userHome', (route) => false);
          },
        ),
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.brightness_2_outlined,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Image(image: AssetImage(sithara)),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt_rounded,
                          color: Colors.black),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: const Text(
                "HAMTHY",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              height: 35,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Editprofile(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 135, 165, 163),
                  minimumSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Edit Profile",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Divider(),
            ProfileWidget(
              icon: Icons.settings,
              title: "Settings",
              onPress: () {},
              endIcon: true, // Set 'endIcon' to true
            ),
            ProfileWidget(
              icon: Icons.chat_bubble,
              title: "Chat",
              onPress: () {},
              endIcon: true, // Set 'endIcon' to true
            ),
            ProfileWidget(
              icon: Icons.local_offer_rounded,
              title: "Futsal Promotions",
              onPress: () {},
              endIcon: true, // Set 'endIcon' to true
            ),
            ProfileWidget(
              icon: Icons.settings,
              title: "Settings",
              onPress: () {},
              endIcon: true, // Set 'endIcon' to true
            ),
            ProfileWidget(
              icon: Icons.logout_outlined,
              title: "Logout",
              onPress: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/login', (route) => false);
              },
              endIcon: true,
              textColor: Colors.red, // Set text color to red
            ),
          ],
        ),
      ),
    );
  }
}
