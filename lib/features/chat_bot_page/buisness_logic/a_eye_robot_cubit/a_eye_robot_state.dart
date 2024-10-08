import 'package:freezed_annotation/freezed_annotation.dart';
part 'a_eye_robot_state.freezed.dart';

@freezed
class AEyeRobotState with _$AEyeRobotState {
  const factory AEyeRobotState.homePage() = _HomePage;
  const factory AEyeRobotState.secondaryPage() = _ChatbotPage;
}
