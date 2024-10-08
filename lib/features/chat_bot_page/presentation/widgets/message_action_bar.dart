import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/chat_database_cubit/chat_database_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_model.dart';
import 'package:a_eye_bot/features/chat_bot_page/presentation/widgets/copy_to_clipboard_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageActionBar extends StatelessWidget {
  final ChatModel chatModel;
  final int messageIndex;
  late final content = chatModel.contentList[messageIndex]!;
  MessageActionBar(
      {super.key, required this.chatModel, required this.messageIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CopyToClipboardButton(content: content),
        buildAddToFavoriteButton(context),
      ],
    );
  }

  Widget buildAddToFavoriteButton(BuildContext context) {
    return IconButton(
      highlightColor: Colors.black12,
      onPressed: () {
        favouriteButtonPressed(context);
      },
      icon: Icon(
        content.isStarred ? Icons.star : Icons.star_border_outlined,
        color: Colors.black,
      ),
    );
  }

  void favouriteButtonPressed(BuildContext context) {
    context
        .read<ChatDatabaseCubit>()
        .handleStarredMessage(chatModel, messageIndex);
  }
}
