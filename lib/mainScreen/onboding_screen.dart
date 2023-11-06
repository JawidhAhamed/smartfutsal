import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'signin.dart';

import 'animated_btn.dart';

class OnbodingScreen extends StatefulWidget {
  const OnbodingScreen({super.key});

  @override
  State<OnbodingScreen> createState() => _OnbodingScreenState();
}

class _OnbodingScreenState extends State<OnbodingScreen> {
  late RiveAnimationController _btnAnimationController;

  bool isShowSignInDialog = false;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation(
      "active",
      autoplay: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width * 1.7,
            left: 100,
            bottom: 100,
            child: Image.asset(
              "assets/Backgrounds/Spline.png",
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: const SizedBox(),
            ),
          ),
          const RiveAnimation.asset(
            "assets/RiveAssets/shapes.riv",
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: const SizedBox(),
            ),
          ),
          AnimatedPositioned(
            top: isShowSignInDialog ? -50 : 0,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            duration: Duration(milliseconds: 260),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    SizedBox(
                      width: 260,
                      child: Column(
                        children: [
                          // Text(
                          //   "To Enhance the Futsal Experience",
                          //   style: TextStyle(
                          //     fontSize: 50,
                          //     fontWeight: FontWeight.w700,
                          //     color: Colors.white,
                          //     fontFamily: "Poppins",
                          //     height: 1.2,
                          //   ),
                          // ),
                          DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontFamily: "Poppins",
                              height: 1.2,
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                    "To Enhance the Futsal Experience",
                                    speed: Duration(milliseconds: 100))
                              ],
                            ),
                          ),

                          SizedBox(height: 16),
                          Text(
                            "Start today to experience the simplest way to enjoy. It's free to try!",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(flex: 2),
                    // AnimatedBtn(
                    //   btnAnimationController: _btnAnimationController,
                    //   press: () {
                    //     _btnAnimationController.isActive = true;

                    //     Future.delayed(
                    //       const Duration(milliseconds: 800),
                    //       () {
                    // setState(() {
                    //   isShowSignInDialog = true;
                    // });
                    // showCustomDialog(
                    //   const context(),
                    //   onValue: (_) {
                    //     setState(() {
                    //       isShowSignInDialog = false;
                    //     });
                    //   },
                    // );
                    //       },
                    //     );
                    //   },
                    // ),

                    AnimatedBtn(
                        btnAnimationController: _btnAnimationController,
                        press: () {
                          _btnAnimationController.isActive = true;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Signin(),
                            ),
                          );
                          Future.delayed(const Duration(milliseconds: 800));
                        }),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      // child: Text(
                      //   "Purchase includes access to 30+ courses, 240+ premium tutorials, 120+ hours of videos, source files and certificates.",
                      //   style: TextStyle(color: Colors.white),
                      // ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
