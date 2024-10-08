import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundGif extends StatelessWidget {
  const BackgroundGif({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundImage(),
        backdropFilter(),
      ],
    );
  }

  Widget backdropFilter() {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Container(
        color: Colors.black.withOpacity(0.7),
      ),
    );
  }

  Widget backgroundImage() {
    return SizedBox(
      height: double.infinity,
      child: RotatedBox(
        quarterTurns: 1,
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 100.0,
              sigmaY: 100.0,
            ),
            child: Image.asset(
              'assets/images/background-gif.gif',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
