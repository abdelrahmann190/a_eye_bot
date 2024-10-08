import 'dart:async';

import 'package:a_eye_bot/core/extensions/build_context_extensions.dart';
import 'package:a_eye_bot/core/widgets/chat_message_container.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/gemini_api_cubit/gemini_api_cubit.dart';
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/gemini_api_cubit/gemini_api_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AEYEBotInteractionFloatingMessage extends StatefulWidget {
  const AEYEBotInteractionFloatingMessage({super.key});

  @override
  State<AEYEBotInteractionFloatingMessage> createState() =>
      _AEYEBotInteractionFloatingMessageState();
}

class _AEYEBotInteractionFloatingMessageState
    extends State<AEYEBotInteractionFloatingMessage> {
  String interactionText = '';
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<GeminiApiCubit, GeminiApiState>(
      listener: (context, state) {
        state.whenOrNull(
          interactWithRobot: (text) {
            setState(() {
              isVisible = !isVisible;

              interactionText = text;
            });
            Timer(
              const Duration(seconds: 5),
              () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
            );
          },
        );
      },
      child: AnimatedOpacity(
        opacity: isVisible ? 1 : 0,
        duration: const Duration(milliseconds: 300),
        child: ChatMessageContainer(
          width: 150,
          child: Material(
            color: Colors.transparent,
            child: Text(
              interactionText,
              style:
                  context.textTheme.labelMedium!.copyWith(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
