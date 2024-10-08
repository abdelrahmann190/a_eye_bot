import 'package:flutter/material.dart';

class GeminiTextWidget extends StatelessWidget {
  final String text;

  const GeminiTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      parseBoldAndBulletText(text),
    );
  }

  TextSpan parseBoldAndBulletText(String input) {
    List<TextSpan> spans = [];

    // First, handle the bold formatting (before replacing *)
    final RegExp exp = RegExp(r'\*\*(.*?)\*\*');
    final matches = exp.allMatches(input);
    int lastMatchEnd = 0;

    for (final match in matches) {
      // Add text before the bold part
      if (match.start > lastMatchEnd) {
        // Handle any bullet points (*) in the text before the bold part
        spans.addAll(
            _processBulletPoints(input.substring(lastMatchEnd, match.start)));
      }

      // Add the bold text
      spans.add(TextSpan(
        text: match.group(1),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ));

      lastMatchEnd = match.end;
    }

    // Add the remaining text after the last match and handle bullet points
    if (lastMatchEnd < input.length) {
      spans.addAll(_processBulletPoints(input.substring(lastMatchEnd)));
    }

    return TextSpan(
        children: spans, style: const TextStyle(color: Colors.black));
  }

  // Helper method to handle bullet points (*) in non-bold text
  List<TextSpan> _processBulletPoints(String input) {
    List<TextSpan> spans = [];
    input.split(' ').forEach((word) {
      if (word.startsWith('*')) {
        // Replace single * with a bullet point
        spans.add(const TextSpan(text: '• '));
        spans.add(TextSpan(text: '${word.substring(1)} '));
      } else {
        spans.add(TextSpan(text: '$word '));
      }
    });
    return spans;
  }
}
