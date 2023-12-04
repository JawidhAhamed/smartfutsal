import 'package:flutter/material.dart';
import 'profilePic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ProfilePic(),
        const SizedBox(
          height: 20,
        ),
        IconButton(
          onPressed: () {},

          icon: const Icon(Icons.star), // Icon to display
          color: Colors.blue, // Color of the icon
          iconSize: 20.0, // Size of the icon
        ),
      ],
    );
  }
}
