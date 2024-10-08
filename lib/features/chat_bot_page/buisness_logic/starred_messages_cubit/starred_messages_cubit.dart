import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/starred_messages_cubit/starred_messages_state.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/content_wrapper.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/repos/starred_messages_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class StarredMessagesCubit extends Cubit<StarredMessagesState> {
  final StarredMessagesRepository _starredMessagesRepository;
  StarredMessagesCubit(this._starredMessagesRepository)
      : super(
          const StarredMessagesState.initial(),
        );

  void loadAllStarredMessages() {
    emit(
      const StarredMessagesState.initial(),
    );
    final contentList = _starredMessagesRepository.getAllStarredMessages();
    emit(
      StarredMessagesState.starredMessagesLoaded(contentList),
    );
  }

  void clearAllStarredMessages() async {
    emit(
      const StarredMessagesState.initial(),
    );
    await _starredMessagesRepository.clearAllStarredMessages();
    emit(
      const StarredMessagesState.starredMessagesLoaded([]),
    );
  }

  void deleteStarredMessage(ContentWrapper content) async {
    emit(
      const StarredMessagesState.initial(),
    );
    await _starredMessagesRepository.deleteStarredMessage(content);
    loadAllStarredMessages();
  }

  void addStarredMessage(ContentWrapper content) async {
    emit(
      const StarredMessagesState.initial(),
    );
    await _starredMessagesRepository.addStarredMessage(content);
    loadAllStarredMessages();
  }
}
