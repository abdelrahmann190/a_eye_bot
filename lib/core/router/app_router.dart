import 'package:a_eye_bot/core/di/injectable_configuration.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/image_picker_cubit/image_picker_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/presentation/pages/chatbot_page.dart';
import 'package:a_eye_bot/features/chat_bot_page/presentation/pages/starred_messages_page.dart';
import 'package:a_eye_bot/features/home_page/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homePage:
        return MaterialPageRoute(
          builder: (_) {
            return const HomePage();
          },
        );
      case AppRoutes.chatbotPage:
        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider(
              create: (context) => getIt<ImagePickerCubit>(),
              child: ChatBotPage(index: settings.arguments as int?),
            );
          },
        );
      case AppRoutes.starredMessagesPage:
        return MaterialPageRoute(
          builder: (_) {
            return const StarredMessagesPage();
          },
        );
      default:
        return null;
    }
  }
}

class AppRoutes {
  static const String homePage = '/homePage';
  static const String chatbotPage = '/chatbotPage';
  static const String starredMessagesPage = '/starredMessagesPage';
}
