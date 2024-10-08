import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/starred_messages_cubit/starred_messages_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/starred_messages_cubit/starred_messages_state.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/content_wrapper.dart';
import 'package:a_eye_bot/features/chat_bot_page/presentation/widgets/starred_message_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StarredMessagesList extends StatefulWidget {
  const StarredMessagesList({super.key});

  @override
  State<StarredMessagesList> createState() => _StarredMessagesListState();
}

class _StarredMessagesListState extends State<StarredMessagesList> {
  List<ContentWrapper> messagesList = [];

  @override
  Widget build(BuildContext context) {
    return BlocListener<StarredMessagesCubit, StarredMessagesState>(
      listener: (context, state) {
        state.whenOrNull(
          starredMessagesLoaded: (contentList) {
            setState(() {
              messagesList = contentList;
            });
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 130, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(messagesList.length, (index) {
              return StarredMessageWidget(content: messagesList[index]);
            }),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<StarredMessagesCubit>().loadAllStarredMessages();
    });
  }
}
