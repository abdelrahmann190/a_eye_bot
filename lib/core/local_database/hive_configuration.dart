import 'package:a_eye_bot/core/local_database/database_constants.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_model.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/content_wrapper.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// This class is used to configure hive operations at the startup of the app
class HiveConfiguration {
  static Future<void> init() async {
    await Hive.initFlutter();

    ///Hive adapters
    Hive.registerAdapter(ChatModelAdapter());
    Hive.registerAdapter(ContentWrapperAdapter());

    ///Hive boxes

    await Hive.openBox<ChatModel>(DatabaseConstants.chatBoxName);
    await Hive.openBox<int>(DatabaseConstants.chatIndexBoxName);
    await Hive.openBox<ContentWrapper>(
        DatabaseConstants.starredMessagesBoxName);
  }
}
