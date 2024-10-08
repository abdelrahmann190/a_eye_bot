import 'package:a_eye_bot/core/local_database/chat_database_service.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class ChatDatabaseRepository {
  final ChatDatabaseService _chatDatabaseService;

  // Constructor that initializes with the ChatDatabaseService
  ChatDatabaseRepository(this._chatDatabaseService);

  // Retrieve all chat sessions
  List<ChatModel> getChatSessions() {
    return _chatDatabaseService.getChatSessions();
  }

  // Retrieve a single chat session by index
  ChatModel getCurrentChatSession() {
    return _chatDatabaseService.getCurrentChatSession();
  }

  // Retrieve a single chat session by index
  Future<void> updateCurrentChatSession(ChatModel chatModel) {
    return _chatDatabaseService.updateCurrentChatSession(
      chatModel,
    );
  }

  // Clear all chat sessions (if needed)
  Future<void> clearAllChatSessions() async {
    await _chatDatabaseService.clearChatSessions();
  }

  // Check if there are any chat sessions
  bool hasChatSessions() {
    return _chatDatabaseService.hasChatSessions();
  }

  Future<void> deleteChatSession(int index) {
    return _chatDatabaseService.deleteChatSession(index);
  }

  Future<void> updateCurrentIndex(int? index) async {
    return _chatDatabaseService.updateCurrentChatIndex(index);
  }

  /// Clear the current chat index
  Future<void> emptyCurrentIndex() async {
    await _chatDatabaseService.emptyCurrentIndex();
  }
}
