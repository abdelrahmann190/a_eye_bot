import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/chat_database_cubit/chat_database_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/chat_database_cubit/chat_database_state.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_model.dart';
import 'package:a_eye_bot/features/chat_bot_page/presentation/widgets/chat_message_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatListWidget extends StatefulWidget {
  const ChatListWidget({super.key});

  @override
  State<ChatListWidget> createState() => _ChatListWidgetState();
}

class _ChatListWidgetState extends State<ChatListWidget> {
  ChatModel chatModel = ChatModel.empty();
  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatDatabaseCubit, ChatDatabaseState>(
      listener: listnerFunction,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: List.generate(
            chatModel.contentList.length,
            (index) {
              return ChatMessageWidget(
                chatModel: chatModel,
                messageIndex: index,
                isFinalMessage: chatModel.contentList.length - 1 == index,
              );
            },
          ),
        ),
      ),
    );
  }

  void listnerFunction(BuildContext context, ChatDatabaseState state) {
    state.whenOrNull(
      singleChatSessionLoaded: (stateChatModel) {
        setState(
          () {
            chatModel = stateChatModel;
          },
        );
      },
    );
  }
}
