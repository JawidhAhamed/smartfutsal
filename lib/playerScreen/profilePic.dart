import 'package:flutter/material.dart';
//import 'package:flutter_svg_image/flutter_svg_image.da;rt'

class ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(1500, 50, 0, 0),
        ),
        SizedBox(
          height: 115,
          width: 115,
          child: Stack(
            fit: StackFit.expand,
            // overflow: Overflow.visible,
            children: [
              const CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage(
                  'assets/prof.png',
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: -8,
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 0, 0, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      onPressed: () {},
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt),
                      ),
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
