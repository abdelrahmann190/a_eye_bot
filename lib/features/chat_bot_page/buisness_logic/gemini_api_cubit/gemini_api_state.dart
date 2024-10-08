import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'gemini_api_state.freezed.dart';

@freezed
class GeminiApiState with _$GeminiApiState {
  const factory GeminiApiState.initial() = _Initial;
  const factory GeminiApiState.loadingInteraction() = _LoadingInteraction;

  const factory GeminiApiState.interactWithRobot(String interactionText) =
      _InteractWithRobot;
  const factory GeminiApiState.interActionFailed() = _InterActionFailed;

  const factory GeminiApiState.loadingChatMessage() = _LoadingChatStream;
  const factory GeminiApiState.chatMessageLoaded(ChatModel chatModel) =
      _ChatMessageLoaded;
  const factory GeminiApiState.chatMessageError() = _ChatMessageError;
}
