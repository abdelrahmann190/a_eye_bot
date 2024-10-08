import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/image_picker_cubit/image_picker_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/image_picker_cubit/image_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerButton extends StatelessWidget {
  const ImagePickerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImagePickerCubit, ImagePickerState>(
      builder: (context, state) {
        if (state.image == null) {
          // No image loaded, show image icon
          return IconButton(
            icon: const Icon(Icons.image_rounded),
            onPressed: () {
              context.read<ImagePickerCubit>().getImageFromGallery();
            },
          );
        } else {
          return IconButton(
            onPressed: () {
              context.read<ImagePickerCubit>().removeImage();
            },
            icon: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.red,
              child: Icon(
                Icons.close,
                size: 14,
                color: Colors.white,
              ),
            ),
          );
        }
      },
    );
  }
}
