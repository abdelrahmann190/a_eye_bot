import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_model.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/content_wrapper.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/repos/chat_database_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'chat_database_state.dart';

@singleton
class ChatDatabaseCubit extends Cubit<ChatDatabaseState> {
  final ChatDatabaseRepository _chatDatabaseRepository;
  ChatDatabaseCubit(this._chatDatabaseRepository)
      : super(const ChatDatabaseState.initial());

  Future<void> getChatSessions() async {
    loadingChatSession();

    final chatSessions = _chatDatabaseRepository.getChatSessions();
    emit(
      ChatDatabaseState.chatSessionsLoaded(chatSessions),
    );
  }

  void getSingleChatSession(int index) async {
    loadingChatSession();
    await _chatDatabaseRepository.updateCurrentIndex(index);
    final chatModel = _chatDatabaseRepository.getCurrentChatSession();
    emit(
      ChatDatabaseState.singleChatSessionLoaded(chatModel),
    );
  }

  void startNewChatSession() async {
    await _chatDatabaseRepository.emptyCurrentIndex();
    emit(
      ChatDatabaseState.singleChatSessionLoaded(ChatModel.empty()),
    );
  }

  void loadingChatSession() {
    emit(const ChatDatabaseState.loadingChatSession());
  }

  void updateChatSession(ChatModel chatModel) async {
    await _chatDatabaseRepository.updateCurrentChatSession(chatModel);
    emit(
      ChatDatabaseState.singleChatSessionLoaded(chatModel),
    );
  }

  void handleStarredMessage(ChatModel chatModel, int messageIndex) async {
    if (messageIndex < chatModel.contentList.length) {
      final message = chatModel.contentList[messageIndex];
      final newMessage = message!.copyWith(isStarred: !message.isStarred);
      chatModel.contentList[messageIndex] = newMessage;

      emit(
        ChatDatabaseState.messageStarred(newMessage),
      );

      updateChatSession(chatModel);
    }
  }

  void deleteChatSession(int index) async {
    await _chatDatabaseRepository.deleteChatSession(index);
    getChatSessions();
  }
}
