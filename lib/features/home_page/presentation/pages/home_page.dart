import 'package:a_eye_bot/core/widgets/page_custom_scaffold_with_gif_background.dart';
import 'package:a_eye_bot/features/home_page/presentation/widgets/new_chat_button.dart';
import 'package:a_eye_bot/features/home_page/presentation/widgets/recent_chats_button.dart';
import 'package:a_eye_bot/features/home_page/presentation/widgets/starred_messages_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageCustomScaffoldWithGifBackground(
      scaffoldBody: scaffoldBodyWidget(context),
    );
  }

  Widget scaffoldBodyWidget(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RecentChatsButton(),
                  NewChatButton(),
                  StaredMessagesButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
