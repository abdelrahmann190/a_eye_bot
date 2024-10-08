import 'package:a_eye_bot/core/di/injectable_configuration.dart';
import 'package:a_eye_bot/core/router/app_router.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/a_eye_robot_cubit/a_eye_robot_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/chat_database_cubit/chat_database_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/gemini_api_cubit/gemini_api_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/starred_messages_cubit/starred_messages_cubit.dart';
import 'package:a_eye_bot/features/home_page/presentation/widgets/aeye_robot_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AEyeApp extends StatelessWidget {
  const AEyeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter.generateRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homePage,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<AEyeRobotCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<GeminiApiCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<ChatDatabaseCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<StarredMessagesCubit>(),
            ),
          ],
          child: Stack(
            children: [
              child ?? const SizedBox.shrink(),
              const AEyeRobot(),
            ],
          ),
        );
      },
    );
  }
}
