import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';

class BlurBackground extends StatelessWidget {
  const BlurBackground({
    Key? key,
    required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -3,
          left: -100,
          child: Container(
            height: 166,
            width: 166,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Constants.kPinkColor,
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 200,
                sigmaY: 200,
              ),
              child: Container(
                height: 166,
                width: 166,
                color: Colors.transparent,
              ),
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.4,
          right: -50,
          child: Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Constants.kGreenColor,
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 200,
                sigmaY: 200,
              ),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.transparent,
              ),
            ),
          ),
        ),
        // SafeArea(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       SizedBox(
        //         height: screenHeight * 0.1,
        //       ),
        //       CustomOutline(
        //         strokeWidth: 4,
        //         radius: screenWidth * 0.5,
        //         gradient: LinearGradient(
        //           begin: Alignment.topLeft,
        //           end: Alignment.topRight,
        //           colors: [
        //             Constants.kPinkColor,
        //             Constants.kPinkColor.withOpacity(0),
        //             Constants.kGreenColor.withOpacity(0.1),
        //             Constants.kGreenColor,
        //           ],
        //           stops: [0.2, 0.4, 0.6, 1],
        //         ),
        //         width: screenWidth * 0.4,
        //         height: screenHeight * 0.5,
        //         padding: const EdgeInsets.all(4),
        //         child: Container(
        //           decoration: const BoxDecoration(
        //               shape: BoxShape.rectangle,
        //               image: DecorationImage(
        //                   fit: BoxFit.fitWidth,
        //                   alignment: Alignment.center,
        //                   image: AssetImage('assets/img-onboarding.png'))),
        //         ),
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
