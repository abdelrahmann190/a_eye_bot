import 'package:a_eye_bot/features/chat_bot_page/data/models/content_wrapper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'starred_messages_state.freezed.dart';

@freezed
class StarredMessagesState with _$StarredMessagesState {
  const factory StarredMessagesState.initial() = _Initial;
  const factory StarredMessagesState.starredMessagesLoaded(
      List<ContentWrapper> contentList) = _StarredMessagesLoaded;
}
