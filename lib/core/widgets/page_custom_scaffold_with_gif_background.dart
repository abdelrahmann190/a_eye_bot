import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/a_eye_robot_cubit/a_eye_robot_cubit.dart';
import 'package:a_eye_bot/features/home_page/presentation/widgets/background_gif.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageCustomScaffoldWithGifBackground extends StatelessWidget {
  final Widget scaffoldBody;
  final bool isSecondaryPage;
  const PageCustomScaffoldWithGifBackground({
    super.key,
    required this.scaffoldBody,
    this.isSecondaryPage = false,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (isSecondaryPage) {
          context.read<AEyeRobotCubit>().navigateToHomePage();
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            const BackgroundGif(),
            scaffoldBody,
          ],
        ),
      ),
    );
  }
}
