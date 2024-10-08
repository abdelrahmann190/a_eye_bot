import 'package:a_eye_bot/core/local_database/database_constants.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/content_wrapper.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@singleton

/// This class is used to store and retrieve starred messages, it uses hive box to do so
class StarredMessagesService {
  Box<ContentWrapper> get _starredMessagesBox =>
      Hive.box<ContentWrapper>(DatabaseConstants.starredMessagesBoxName);

  List<ContentWrapper> getAllStarredMessages() {
    return _starredMessagesBox.values.toList();
  }

  Future<void> clearAllStarredMessages() async {
    await _starredMessagesBox.clear();
  }

  Future<void> addStarredMessage(ContentWrapper content) async {
    await _starredMessagesBox.add(content);
  }

  Future<void> deleteStarredMessage(ContentWrapper content) async {
    final messagesList = getAllStarredMessages();
    final messageIndex = messagesList.indexWhere(
      (element) {
        return element.text == content.text;
      },
    );
    if (messageIndex > -1) {
      await _starredMessagesBox.deleteAt(messageIndex);
    }
  }
}
