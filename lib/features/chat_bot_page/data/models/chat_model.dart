import 'package:a_eye_bot/features/chat_bot_page/data/models/content_wrapper.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:hive/hive.dart';

part 'chat_model.g.dart';

@CopyWith()
@HiveType(typeId: 0)
class ChatModel extends HiveObject {
  @HiveField(0)
  List<ContentWrapper?> contentList;

  @HiveField(1)
  String? chatTitle;

  ChatModel({
    required this.contentList,
    this.chatTitle,
  });

  factory ChatModel.empty() {
    return ChatModel(
      contentList: [],
    );
  }
}
