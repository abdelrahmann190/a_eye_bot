import 'package:a_eye_bot/core/local_database/starred_messages_service.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/content_wrapper.dart';
import 'package:injectable/injectable.dart';

@singleton
class StarredMessagesRepository {
  final StarredMessagesService _starredMessagesService;

  StarredMessagesRepository(this._starredMessagesService);

  Future<void> deleteStarredMessage(ContentWrapper content) {
    return _starredMessagesService.deleteStarredMessage(content);
  }

  Future<void> addStarredMessage(ContentWrapper content) {
    return _starredMessagesService.addStarredMessage(content);
  }

  Future<void> clearAllStarredMessages() {
    return _starredMessagesService.clearAllStarredMessages();
  }

  List<ContentWrapper> getAllStarredMessages() {
    return _starredMessagesService.getAllStarredMessages();
  }
}
