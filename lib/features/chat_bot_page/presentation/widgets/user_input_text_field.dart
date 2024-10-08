import 'package:a_eye_bot/core/widgets/spacers/horizontal_space.dart';
import 'package:a_eye_bot/features/chat_bot_page/presentation/widgets/image_picker_button.dart';
import 'package:a_eye_bot/features/chat_bot_page/presentation/widgets/submit_button.dart';
import 'package:flutter/material.dart';

class UserInputTextField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onSelectImageButtonPressed;

  const UserInputTextField({
    super.key,
    required this.controller,
    this.onSelectImageButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white10,
      ),
      child: Center(
        child: Row(
          children: [
            const ImagePickerButton(),
            const HorizontalSpace(space: 5),
            Expanded(
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type anything...',
                ),
              ),
            ),
            SubmitButton(userInputController: controller),
          ],
        ),
      ),
    );
  }
}
