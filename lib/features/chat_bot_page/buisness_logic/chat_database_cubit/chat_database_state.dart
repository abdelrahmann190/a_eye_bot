import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_model.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/content_wrapper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_database_state.freezed.dart';

@freezed
class ChatDatabaseState with _$ChatDatabaseState {
  const factory ChatDatabaseState.initial() = _Initial;
  const factory ChatDatabaseState.loadingChatSession() = _LoadingChatSession;
  const factory ChatDatabaseState.error(String error) = _Error;
  const factory ChatDatabaseState.messageStarred(ContentWrapper content) =
      _MessageStarred;

  const factory ChatDatabaseState.chatSessionsLoaded(
      List<ChatModel> chatModelList) = _ChatSessionsLoaded;
  const factory ChatDatabaseState.singleChatSessionLoaded(ChatModel chatModel) =
      _SingleChatSessionLoaded;
}
