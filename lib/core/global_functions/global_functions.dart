import 'package:a_eye_bot/core/router/app_router.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/a_eye_robot_cubit/a_eye_robot_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/content_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalFunctions {
  static void navigateToChatPage(BuildContext context, {int? index}) {
    Navigator.of(context).pushNamed(AppRoutes.chatbotPage, arguments: index);
    context.read<AEyeRobotCubit>().navigateToSecondaryPage();
  }

  static void navigateToStarredMessagesPage(BuildContext context,
      {int? index}) {
    Navigator.of(context)
        .pushNamed(AppRoutes.starredMessagesPage, arguments: index);
    context.read<AEyeRobotCubit>().navigateToSecondaryPage();
  }

  static List<T> getLatestThreeElementsInAList<T>(List<T> myList) {
    if (myList.length <= 2) {
      return myList;
    } else {
      return myList.sublist(myList.length - 2);
    }
  }

  static List<String> getTextListFromContentList(
      List<ContentWrapper?> contentList) {
    final latestContentList = getLatestThreeElementsInAList(contentList);
    final messagesList = latestContentList.map(
      (content) {
        return content?.text ?? '';
      },
    ).toList();

    return messagesList;
  }
}
