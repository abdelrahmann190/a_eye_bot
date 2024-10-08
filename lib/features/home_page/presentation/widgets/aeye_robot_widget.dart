import 'dart:async';

import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/a_eye_robot_cubit/a_eye_robot_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/a_eye_robot_cubit/a_eye_robot_state.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/gemini_api_cubit/gemini_api_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/gemini_api_cubit/gemini_api_state.dart';
import 'package:a_eye_bot/features/home_page/presentation/widgets/aeye_bot_interaction_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';

class AEyeRobot extends StatefulWidget {
  const AEyeRobot({super.key});

  @override
  State<AEyeRobot> createState() => _AEyeRobotState();
}

class _AEyeRobotState extends State<AEyeRobot> {
  StateMachineController? _controller;
  bool isInteractionRunning = false;
  SMIInput<bool>? _isChatInput;
  SMIInput<bool>? _isError;

  @override
  Widget build(BuildContext context) {
    if (_controller == null) {
      return const SizedBox.shrink();
    }

    return BlocListener<GeminiApiCubit, GeminiApiState>(
      listener: _onGeminiApiStateChange,
      child: BlocBuilder<AEyeRobotCubit, AEyeRobotState>(
        builder: (context, robotState) {
          final isHomePage = robotState.maybeWhen(
            homePage: () => true,
            orElse: () => false,
          );
          final mediaQuery = MediaQuery.of(context);
          final size = isHomePage ? 400.0 : 150.0;
          final top = isHomePage ? (mediaQuery.size.height / 2) - 300 : 50.0;
          final left = isHomePage
              ? (mediaQuery.size.width / 2) - 200
              : (mediaQuery.size.width / 2) - 75;
          final curve = isHomePage ? Curves.easeInBack : Curves.easeInOutBack;

          return AnimatedPositioned(
            duration: const Duration(seconds: 1),
            top: top,
            left: left,
            child: GestureDetector(
              onTap: () {
                HapticFeedback.mediumImpact();
                if (isHomePage && !isInteractionRunning) {
                  context
                      .read<GeminiApiCubit>()
                      .generateInteractionWithAEyeBot();
                }
              },
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: curve,
                    width: size,
                    height: size,
                    child: Rive(
                      artboard: _controller!.artboard!,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Positioned(
                    top: 40,
                    left: 210,
                    child: AEYEBotInteractionFloatingMessage(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onGeminiApiStateChange(BuildContext context, GeminiApiState state) {
    state.whenOrNull(
      loadingInteraction: () {
        setState(() {
          isInteractionRunning = true;
        });
        _isChatInput?.value = !_isChatInput!.value;
      },
      interactWithRobot: (text) {
        Timer(const Duration(seconds: 5), () {
          setState(() {
            isInteractionRunning = false;
          });
        });
        _isChatInput?.value = !_isChatInput!.value;
      },
      loadingChatMessage: () {
        _isChatInput?.value = !_isChatInput!.value;
      },
      chatMessageLoaded: (chatMessage) {
        _isChatInput?.value = !_isChatInput!.value;
      },
      chatMessageError: () {
        _isError?.value = !_isError!.value;
        Timer(const Duration(seconds: 1), () {
          _isError?.value = !_isError!.value;
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _loadRiveFileWithStates();
  }

  Future<void> _loadRiveFileWithStates() async {
    RiveFile.initialize();
    final data = await rootBundle.load('assets/rive/robocat.riv');
    final file = RiveFile.import(data);
    final artboard = file.mainArtboard;
    final controller =
        StateMachineController.fromArtboard(artboard, 'State Machine');
    if (controller != null) {
      artboard.addController(controller);
      setState(() {
        _controller = controller;
        _isChatInput = _controller?.findInput<bool>('Chat');
        _isError = _controller?.findInput<bool>('Error');
      });
    }
  }
}
