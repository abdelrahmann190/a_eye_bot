import 'package:a_eye_bot/core/global_functions/global_functions.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/chat_database_cubit/chat_database_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/chat_database_cubit/chat_database_state.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popover/popover.dart';

class RecentChatsButton extends StatefulWidget {
  const RecentChatsButton({super.key});

  @override
  State<RecentChatsButton> createState() => _RecentChatsButtonState();
}

class _RecentChatsButtonState extends State<RecentChatsButton> {
  List<ChatModel> chatList = [];
  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatDatabaseCubit, ChatDatabaseState>(
      listener: (context, state) {
        state.whenOrNull(
          chatSessionsLoaded: (chatModelList) {
            setState(() {
              chatList = chatModelList;
            });
          },
        );
      },
      child: buildPopUpMenu(context, chatList),
    );
  }

  Widget buildPopUpMenu(
      BuildContext context, List<ChatModel> chatSessionsList) {
    return IconButton(
      onPressed: () {
        context.read<ChatDatabaseCubit>().getChatSessions();

        if (chatList.isNotEmpty) {
          showPopover(
            context: context,
            onPop: () {
              chatList = [];
            },
            bodyBuilder: (context) {
              return buildChatListWidget(chatSessionsList);
            },
            direction: PopoverDirection.top,
            width: 220,
            // height: 100,
            arrowHeight: 10,
            arrowWidth: 20,
          );
        }
      },
      icon: buildButtonIconWidget(),
    );
  }

  ListView buildChatListWidget(List<ChatModel> chatSessionsList) {
    return ListView(
      shrinkWrap: true,
      children: List.generate(
        chatSessionsList.length,
        (index) {
          return buildChatTile(
            chatSessionsList[index],
            index,
          );
        },
      ),
    );
  }

  Widget buildChatTile(ChatModel chatModel, int index) {
    return ListTile(
      title: Dismissible(
        background: buildDeleteIcon(false),
        secondaryBackground: buildDeleteIcon(true),
        key: Key(
          index.toString(),
        ),
        onDismissed: (direction) {
          context.read<ChatDatabaseCubit>().deleteChatSession(index);
          pop();
        },
        child: Text(
          textAlign: TextAlign.center,
          chatModel.chatTitle ?? 'recent chat',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      onTap: () {
        pop();

        GlobalFunctions.navigateToChatPage(context, index: index);
      },
    );
  }

  Row buildDeleteIcon(bool isSecondaryBG) {
    return Row(
      mainAxisAlignment:
          isSecondaryBG ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: const [
        Icon(Icons.delete),
      ],
    );
  }

  Widget buildButtonIconWidget() {
    return const CircleAvatar(
      backgroundColor: Colors.white12,
      radius: 30,
      child: Icon(
        Icons.save_outlined,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ChatDatabaseCubit>().getChatSessions();
    });
  }

  void pop() {
    Navigator.of(context).pop();
  }

  PopupMenuItem<dynamic> buildChatMenuItem(ChatModel chatModel, int index) {
    return PopupMenuItem(
      onTap: () {
        GlobalFunctions.navigateToChatPage(context, index: index);
      },
      child: Dismissible(
        key: Key(index.toString()),
        onDismissed: (direction) {
          context.read<ChatDatabaseCubit>().deleteChatSession(index);
        },
        child: Text(
          chatModel.chatTitle ?? 'recent chat',
        ),
      ),
    );
  }
}
