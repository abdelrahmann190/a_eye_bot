import 'package:a_eye_bot/core/widgets/page_custom_scaffold_with_gif_background.dart';
import 'package:a_eye_bot/core/widgets/spacers/vertical_space.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/chat_database_cubit/chat_database_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/presentation/widgets/chat_list_widget.dart';
import 'package:a_eye_bot/features/chat_bot_page/presentation/widgets/new_message_listener.dart';
import 'package:a_eye_bot/features/chat_bot_page/presentation/widgets/starred_messages_listner.dart';
import 'package:a_eye_bot/features/chat_bot_page/presentation/widgets/user_input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBotPage extends StatefulWidget {
  final int? index;
  const ChatBotPage({super.key, this.index});

  @override
  State<ChatBotPage> createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  final userInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return PageCustomScaffoldWithGifBackground(
      isSecondaryPage: true,
      scaffoldBody: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            bottom: 25,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              /// back button
              const Row(
                children: [
                  BackButton(),
                ],
              ),

              /// messages list
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 130),
                  child: ChatListWidget(),
                ),
              ),
              const VerticalSpace(space: 15),

              /// Text field
              UserInputTextField(
                controller: userInputController,
              ),

              /// this listner to wire the gemini api cubit to the chatdatabase cubit
              const ChatMessagesListener(),
              const StarredMessagesListner(),
            ],
          ),
        ),
      ),
    );
  }

  void initialFunction() {
    if (widget.index != null) {
      context.read<ChatDatabaseCubit>().getSingleChatSession(widget.index!);
    } else {
      context.read<ChatDatabaseCubit>().startNewChatSession();
    }
  }

  @override
  void initState() {
    super.initState();
    initialFunction();
  }
}
