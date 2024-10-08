import 'package:flutter/material.dart';

class ChatMessageContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final bool isUser;
  const ChatMessageContainer(
      {super.key, required this.child, this.width, this.isUser = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: child,
        ),
        insideSmallCircle(),
        outsideSmallCircle(),
      ],
    );
  }

  Positioned insideSmallCircle() {
    return Positioned(
      bottom: 10,
      left: isUser ? null : 10,
      right: isUser ? 10 : null,
      child: Container(
        width: 15,
        height: 15,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
      ),
    );
  }

  Positioned outsideSmallCircle() {
    return Positioned(
      bottom: 0,
      left: isUser ? null : 0,
      right: isUser ? 0 : null,
      child: Container(
        width: 10,
        height: 10,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
      ),
    );
  }
}
