import 'dart:typed_data';

class ChatMessageRequestBody {
  final List<String?> messagesList;
  final List<Uint8List> images;

  ChatMessageRequestBody({
    required this.messagesList,
    this.images = const [],
  });
}
