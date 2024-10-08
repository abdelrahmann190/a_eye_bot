// ignore_for_file: unused_field

import 'package:a_eye_bot/core/networking/gemini_package_initializer.dart';
import 'package:a_eye_bot/core/networking/network_constants.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_message_request_body.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:injectable/injectable.dart';

@singleton
class GeminiApiService {
  static final GeminiApiService _instance = GeminiApiService._internal();
  static late final GeminiPackageInitializer _initializer;
  static late final Gemini _geminiInstance;

  GeminiApiService._internal() {
    _initializer = GeminiPackageInitializer();

    _geminiInstance = Gemini.instance;
  }

  factory GeminiApiService() {
    return _instance;
  }

  Future<Candidates?> generateChatMessageFromApi(
      ChatMessageRequestBody chatMessageRequest) async {
    final chatMessage = _geminiInstance.textAndImage(
      text: chatMessageRequest.messagesList
          .join('-previous chat message for context-'),
      images: chatMessageRequest.images,
    );
    return chatMessage;
  }

  Future<String?> getChatTitleFromApi(String userMessage) async {
    final chatTitle = await _geminiInstance
        .text(NetworkConstants.messageToGetChatTitle + userMessage);
    return chatTitle!.content!.parts!.first.text;
  }

  Future<Candidates?> generateContentFromApi(List<Content> contentList) {
    try {
      final chatMessage = _geminiInstance.textAndImage(
        text: contentList.toString(),
        images: [],
      );
      return chatMessage;
    } catch (e) {
      throw Exception();
    }
  }

  Future<Candidates?> generateInteractionWithAEyeBot() async {
    return _geminiInstance.text(NetworkConstants.robocatInteractionMessage);
  }
}
