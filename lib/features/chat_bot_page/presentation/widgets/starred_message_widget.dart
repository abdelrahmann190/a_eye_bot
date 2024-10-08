import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/starred_messages_cubit/starred_messages_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/content_wrapper.dart';
import 'package:a_eye_bot/features/chat_bot_page/presentation/widgets/copy_to_clipboard_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StarredMessageWidget extends StatelessWidget {
  final ContentWrapper content;
  const StarredMessageWidget({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Text(
            content.text ?? '',
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CopyToClipboardButton(content: content),
              IconButton(
                onPressed: () {
                  context
                      .read<StarredMessagesCubit>()
                      .deleteStarredMessage(content);
                },
                icon: const Icon(
                  Icons.star,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
