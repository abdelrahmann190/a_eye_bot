import 'package:a_eye_bot/core/widgets/page_custom_scaffold_with_gif_background.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/starred_messages_cubit/starred_messages_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/presentation/widgets/starred_messages_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StarredMessagesPage extends StatelessWidget {
  const StarredMessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageCustomScaffoldWithGifBackground(
      isSecondaryPage: true,
      scaffoldBody: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BackButton(),
                IconButton(
                  onPressed: () {
                    context
                        .read<StarredMessagesCubit>()
                        .clearAllStarredMessages();
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
            const Expanded(
              child: StarredMessagesList(),
            ),
          ],
        ),
      ),
    );
  }
}
