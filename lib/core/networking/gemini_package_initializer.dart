import 'package:a_eye_bot/core/networking/network_constants.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:injectable/injectable.dart';

@singleton
class GeminiPackageInitializer {
  static final GeminiPackageInitializer _instance =
      GeminiPackageInitializer._internal();

  GeminiPackageInitializer._internal() {
    Gemini.init(
      apiKey: NetworkConstants.apiKey,
    );
  }

  factory GeminiPackageInitializer() {
    return _instance;
  }
}
