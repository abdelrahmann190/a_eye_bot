import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/chat_database_cubit/chat_database_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/gemini_api_cubit/gemini_api_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/gemini_api_cubit/gemini_api_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatMessagesListener extends StatelessWidget {
  final int? index;
  const ChatMessagesListener({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GeminiApiCubit, GeminiApiState>(
      listener: (context, state) {
        state.whenOrNull(
          loadingChatMessage: () {
            context.read<ChatDatabaseCubit>().loadingChatSession();
          },
          chatMessageLoaded: (chatModel) {
            context.read<ChatDatabaseCubit>().updateChatSession(chatModel);
          },
        );
      },
      child: Container(),
    );
  }
}
