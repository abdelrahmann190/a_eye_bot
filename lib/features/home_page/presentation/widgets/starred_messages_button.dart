import 'package:a_eye_bot/core/global_functions/global_functions.dart';
import 'package:flutter/material.dart';

class StaredMessagesButton extends StatelessWidget {
  const StaredMessagesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        GlobalFunctions.navigateToStarredMessagesPage(context);
      },
      icon: const CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white12,
        child: Icon(Icons.star),
      ),
    );
  }
}
