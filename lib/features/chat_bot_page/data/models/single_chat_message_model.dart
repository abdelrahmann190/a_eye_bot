import 'package:flutter_gemini/flutter_gemini.dart';

class SingleChatMessageModel {
  final Content? content;
  final String? chatTitle;

  SingleChatMessageModel({
    required this.content,
    this.chatTitle,
  });
}
