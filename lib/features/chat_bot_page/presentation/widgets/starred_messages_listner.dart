import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/chat_database_cubit/chat_database_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/chat_database_cubit/chat_database_state.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/starred_messages_cubit/starred_messages_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StarredMessagesListner extends StatelessWidget {
  const StarredMessagesListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatDatabaseCubit, ChatDatabaseState>(
      listenWhen: (previous, current) => current.maybeWhen(
        messageStarred: (content) => true,
        orElse: () => false,
      ),
      listener: (context, state) {
        state.whenOrNull(
          messageStarred: (content) {
            if (content.isStarred) {
              context.read<StarredMessagesCubit>().addStarredMessage(content);
            } else {
              context
                  .read<StarredMessagesCubit>()
                  .deleteStarredMessage(content);
            }
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
