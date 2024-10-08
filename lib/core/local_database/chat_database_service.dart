import 'package:a_eye_bot/core/local_database/database_constants.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_model.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@singleton
class ChatDatabaseService {
  final int _maxChats = 3;

  /// Box for ChatModel
  Box<ChatModel> get _chatBox =>
      Hive.box<ChatModel>(DatabaseConstants.chatBoxName);

  Box<int> get _chatIndexBox =>
      Hive.box<int>(DatabaseConstants.chatIndexBoxName);

  /// Close the box when it's no longer needed
  Future<void> closeBox() async {
    await _chatBox.close();
  }

  /// Start a new chat session and update the current index
  Future<void> startNewChatSession(ChatModel chatModel) async {
    // Ensure we are working within the limit of chat sessions
    if (_chatBox.length >= _maxChats) {
      // Remove the oldest session (FIFO)
      await _chatBox.deleteAt(0);
    }
    // Add the new chat session and update the index
    await _chatBox.add(chatModel);
    final newIndex = _chatBox.values.length - 1;
    await updateCurrentChatIndex(newIndex);
  }

  /// Retrieve all chat sessions
  List<ChatModel> getChatSessions() {
    return _chatBox.values.toList();
  }

  /// Retrieve the current chat session using the stored index
  ChatModel getCurrentChatSession() {
    final int? currentIndex = _getCurrentIndex();
    if (currentIndex == null || currentIndex >= _chatBox.length) {
      throw Exception("No current chat session found");
    }
    return _chatBox.getAt(currentIndex)!;
  }

  /// Update the current chat session (without passing the index)
  Future<void> updateCurrentChatSession(ChatModel chatModel) async {
    final int? currentIndex = _getCurrentIndex();
    if (currentIndex != null &&
        currentIndex >= 0 &&
        currentIndex < _chatBox.length) {
      await _chatBox.putAt(currentIndex, chatModel);
    } else {
      // Otherwise, start a new session
      await startNewChatSession(chatModel);
    }
  }

  /// Clear all chat sessions
  Future<void> clearChatSessions() async {
    await _chatBox.clear();
    await updateCurrentChatIndex(null); // Clear the current index as well
  }

  /// Check if chat sessions exist
  bool hasChatSessions() {
    return _chatBox.isNotEmpty;
  }

  /// Get the current index from the box
  int? _getCurrentIndex() {
    return _chatIndexBox.get(DatabaseConstants.chatIndexKey);
  }

  Future<void> deleteChatSession(int index) async {
    await _chatBox.deleteAt(index);
  }

  /// Update the current index in the box
  Future<void> updateCurrentChatIndex(int? newIndex) async {
    final box = Hive.box<int>('indexBox');
    if (newIndex != null) {
      await box.put(DatabaseConstants.chatIndexKey, newIndex);
    } else {
      await box.delete(DatabaseConstants.chatIndexKey);
    }
  }

  /// Removes the value of current index in order to start a new chat session
  Future<void> emptyCurrentIndex() async {
    final box = Hive.box<int>('indexBox');
    await box.clear();
  }
}
