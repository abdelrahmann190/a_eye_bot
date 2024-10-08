import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/gemini_api_cubit/gemini_api_state.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_message_request_body.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/chat_model.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/models/content_wrapper.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/repos/gemini_api_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class GeminiApiCubit extends Cubit<GeminiApiState> {
  final GeminiApiRepository _geminiApiRepository;

  /// constructor
  GeminiApiCubit(this._geminiApiRepository)
      : super(const GeminiApiState.initial());

  /// Generate a chat message from the API
  Future<void> generateChatMessageFromApi(
    ChatMessageRequestBody chatMessageRequest,
    ChatModel chatModel,
  ) async {
    try {
      emit(const GeminiApiState.loadingChatMessage());

      // Build the user's message and add it to the chat model
      final updatedChatModel =
          await _buildUserMessage(chatMessageRequest, chatModel);

      emit(
        GeminiApiState.chatMessageLoaded(updatedChatModel),
      );
      // emitting this state to control the flying cat behaviour
      emit(const GeminiApiState.loadingChatMessage());

      // Request message generation from the API
      final chatMessageResult = await _geminiApiRepository
          .generateChatMessageFromApi(chatMessageRequest);

      // Handle the API response
      chatMessageResult.when(
        success: (candidates) {
          if (candidates != null && candidates.content != null) {
            // Add the generated message from Gemini and update the chat model
            final updatedContentList = List.of(updatedChatModel.contentList)
              ..add(ContentWrapper.fromContent(candidates.content));
            final newChatModel =
                updatedChatModel.copyWith(contentList: updatedContentList);

            emit(GeminiApiState.chatMessageLoaded(newChatModel));
          } else {
            emit(const GeminiApiState.chatMessageError());
          }
        },
        failure: (error) {
          emit(
            const GeminiApiState.chatMessageError(),
          );
        },
      );
    } catch (e) {
      emit(
        const GeminiApiState.chatMessageError(),
      );
    }
  }

  /// Helper function to build the user's single message
  Future<ChatModel> _buildUserMessage(
    ChatMessageRequestBody chatMessageRequest,
    ChatModel chatModel,
  ) async {
    final content = ContentWrapper(
      role: 'user',
      text: chatMessageRequest.messagesList.last,
      image: chatMessageRequest.images.isNotEmpty
          ? chatMessageRequest.images.first
          : null,
    );
    final updatedContentList = List.of(chatModel.contentList)..add(content);

    final chatTitle = await _getChatTitleFromApi(
      chatMessageRequest.messagesList.first!,
      chatModel,
    );

    return chatModel.copyWith(
        contentList: updatedContentList, chatTitle: chatTitle);
  }

  /// Helper function to get the chat title from the API (only for the first message)
  Future<String?> _getChatTitleFromApi(
      String userMessage, ChatModel chatModel) async {
    if (chatModel.chatTitle == null) {
      return await _geminiApiRepository.getChatTitleFromApi(userMessage);
    }
    return chatModel.chatTitle;
  }

  /// Interaction with the bot, generates a random message when the cat is pressed
  Future<void> generateInteractionWithAEyeBot() async {
    emit(const GeminiApiState.loadingInteraction());
    try {
      final interaction =
          await _geminiApiRepository.generateInteractionWithAEyeBot();

      interaction.when(
        success: (candidates) {
          final text = candidates?.content?.parts?.single.text ?? 'meow';
          emit(GeminiApiState.interactWithRobot(text));
        },
        failure: (error) {
          emit(const GeminiApiState.interactWithRobot('meow'));
        },
      );
    } catch (e) {
      emit(const GeminiApiState.interactWithRobot(
          'meow')); // Fallback on failure
    }
  }
}
