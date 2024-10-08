import 'dart:typed_data';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:hive/hive.dart';

part 'content_wrapper.g.dart';

@CopyWith()
@HiveType(typeId: 1)
class ContentWrapper {
  @HiveField(0)
  final String? text;
  @HiveField(1)
  final String? role;
  @HiveField(2)
  final Uint8List? image;
  @HiveField(3)
  bool isStarred;

  // Constructor to create the wrapper from Content class
  ContentWrapper({
    required this.text,
    required this.role,
    this.image,
    this.isStarred = false,
  });

  // Convert Gemini's Content class to ContentWrapper
  factory ContentWrapper.fromContent(Content? content) {
    return ContentWrapper(
      text: content!.parts!.first.text,
      role: content.role,
    );
  }
}
