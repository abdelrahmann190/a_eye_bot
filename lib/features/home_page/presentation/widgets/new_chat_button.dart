import 'package:a_eye_bot/core/global_functions/global_functions.dart';
import 'package:flutter/material.dart';

class NewChatButton extends StatelessWidget {
  const NewChatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        GlobalFunctions.navigateToChatPage(context);
      },
      icon: const CircleAvatar(
        radius: 50,
        child: Icon(
          Icons.chat,
          size: 35,
        ),
      ),
    );
  }
}
