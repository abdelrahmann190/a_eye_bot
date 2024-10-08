import 'package:a_eye_bot/core/global_functions/global_functions.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/chat_database_cubit/chat_database_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/chat_database_cubit/chat_database_state.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/gemini_api_cubit/gemini_api_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/image_picker_cubit/image_picker_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_message_request_body.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubmitButton extends StatelessWidget {
  final TextEditingController userInputController;
  const SubmitButton({super.key, required this.userInputController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatDatabaseCubit, ChatDatabaseState>(
      buildWhen: (previous, current) => current.maybeWhen(
        singleChatSessionLoaded: (chatModel) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return IconButton(
          onPressed: () {
            state.whenOrNull(
              singleChatSessionLoaded: (chatModel) {
                onSubmit(context, chatModel);
              },
            );
          },
          icon: const Icon(
            Icons.send,
          ),
        );
      },
    );
  }

  void onSubmit(BuildContext context, ChatModel chatModel) {
    final image = context.read<ImagePickerCubit>().state.image;
    if (userInputController.value.text.isNotEmpty) {
      final messagesList =
          GlobalFunctions.getTextListFromContentList(chatModel.contentList);
      messagesList.add(userInputController.value.text);
      context.read<GeminiApiCubit>().generateChatMessageFromApi(
            ChatMessageRequestBody(
              messagesList: messagesList,
              images: image != null ? [image] : [],
            ),
            chatModel,
          );
      if (image != null) {
        context.read<ImagePickerCubit>().removeImage();
      }
      userInputController.clear();
    }
  }
}
