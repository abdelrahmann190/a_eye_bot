import 'package:a_eye_bot/features/chat_bot_page/data/models/content_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyToClipboardButton extends StatelessWidget {
  final ContentWrapper content;
  const CopyToClipboardButton({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: Colors.black12,
      onPressed: copyToClipboard,
      icon: const Icon(
        Icons.copy_outlined,
        color: Colors.black,
        size: 18,
      ),
    );
  }

  void copyToClipboard() {
    Clipboard.setData(ClipboardData(text: content.text ?? ''));
  }
}
