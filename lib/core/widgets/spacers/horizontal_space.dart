import 'package:flutter/material.dart';

class HorizontalSpace extends StatelessWidget {
  final double space;
  const HorizontalSpace({super.key, required this.space});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: space,
    );
  }
}
