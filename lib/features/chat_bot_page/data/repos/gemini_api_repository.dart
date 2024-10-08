import 'package:a_eye_bot/core/networking/api_error_handler.dart';
import 'package:a_eye_bot/core/networking/api_result.dart';
import 'package:a_eye_bot/core/networking/gemini_api_service.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_message_request_body.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:injectable/injectable.dart';

@singleton
class GeminiApiRepository {
  final GeminiApiService _apiService;

  GeminiApiRepository(this._apiService);

  Future<ApiResult<Candidates?>> generateChatMessageFromApi(
      ChatMessageRequestBody chatMessageRequest) async {
    try {
      final chatMessage =
          await _apiService.generateChatMessageFromApi(chatMessageRequest);
      return ApiResult.success(chatMessage);
    } catch (e) {
      return ApiResult.failure(
        ErrorHandler.handleError(e as Exception),
      );
    }
  }

  Future<ApiResult<Candidates?>> generateInteractionWithAEyeBot() async {
    try {
      final interaction = await _apiService.generateInteractionWithAEyeBot();
      return ApiResult.success(interaction);
    } catch (e) {
      return ApiResult.failure(
        ErrorHandler.handleError(e as Exception),
      );
    }
  }

  Future<String?> getChatTitleFromApi(String userMessage) async {
    return _apiService.getChatTitleFromApi(userMessage);
  }
}
