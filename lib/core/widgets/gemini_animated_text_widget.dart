import 'package:flutter/material.dart';
import 'dart:async';

class GeminiAnimatedTextWidget extends StatefulWidget {
  final String text;

  const GeminiAnimatedTextWidget({super.key, required this.text});

  @override
  GeminiAnimatedTextWidgetState createState() =>
      GeminiAnimatedTextWidgetState();
}

class GeminiAnimatedTextWidgetState extends State<GeminiAnimatedTextWidget> {
  String _visibleText = "";
  int _currentCharIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTypingAnimation();
  }

  void _startTypingAnimation() {
    _timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        // Use characters to correctly handle emojis
        if (_currentCharIndex < widget.text.characters.length) {
          _currentCharIndex++;
          _visibleText =
              widget.text.characters.take(_currentCharIndex).toString();
        } else {
          _timer.cancel(); // Stop the timer when all text is displayed
        }
      });
    });
  }

  void _showAllText() {
    setState(() {
      _timer.cancel(); // Stop the timer
      _visibleText = widget.text; // Show all the text immediately
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: _showAllText, // Handle double-tap to show all text
      child: SelectableText.rich(
        parseBoldAndBulletText(_visibleText),
      ),
    );
  }

  TextSpan parseBoldAndBulletText(String input) {
    List<TextSpan> spans = [];

    // First, handle the bold formatting (before replacing *):
    final RegExp exp = RegExp(r'\*\*(.*?)\*\*');
    final matches = exp.allMatches(input);
    int lastMatchEnd = 0;

    for (final match in matches) {
      // Add text before the bold part
      if (match.start > lastMatchEnd) {
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
        spans.add(TextSpan(text: word.substring(1) + ' '));
      } else {
        spans.add(TextSpan(text: word + ' '));
      }
    });
    return spans;
  }
}
