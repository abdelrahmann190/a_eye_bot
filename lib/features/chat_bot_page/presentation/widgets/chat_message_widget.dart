import 'package:a_eye_bot/core/extensions/build_context_extensions.dart';
import 'package:a_eye_bot/core/widgets/chat_message_container.dart';
import 'package:a_eye_bot/core/widgets/gemini_animated_text_widget.dart';
import 'package:a_eye_bot/core/widgets/gemini_text_widget.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_model.dart';
import 'package:a_eye_bot/features/chat_bot_page/presentation/widgets/message_action_bar.dart';
import 'package:flutter/material.dart';

class ChatMessageWidget extends StatelessWidget {
  final bool isFinalMessage;
  final int messageIndex;
  final ChatModel chatModel;
  late final content = chatModel.contentList[messageIndex]!;

  late final bool isUser = content.role == 'user';
  ChatMessageWidget({
    super.key,
    required this.chatModel,
    required this.messageIndex,
    required this.isFinalMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          child: ChatMessageContainer(
            isUser: isUser,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildMessageTextWidget(context),
                if (isUser && content.image != null)
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Image.memory(
                      content.image!,
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.medium,
                    ),
                  ),
                if (!isUser)
                  MessageActionBar(
                    chatModel: chatModel,
                    messageIndex: messageIndex,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildMessageTextWidget(BuildContext context) {
    if (isFinalMessage && content.text != null && content.text!.length < 1000) {
      return GeminiAnimatedTextWidget(
        text: content.text!,
      );
    } else {
      return GeminiTextWidget(
        text: content.text ?? '',
      );
    }
  }

  TextStyle messageTextStyle(BuildContext context) {
    return context.textTheme.bodyMedium!.copyWith(color: Colors.black);
  }
}
