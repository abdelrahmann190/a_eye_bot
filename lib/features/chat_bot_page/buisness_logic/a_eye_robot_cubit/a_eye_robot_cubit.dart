import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/a_eye_robot_cubit/a_eye_robot_state.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class AEyeRobotCubit extends Cubit<AEyeRobotState> {
  AEyeRobotCubit() : super(const AEyeRobotState.homePage());

  void navigateToHomePage() {
    emit(
      const AEyeRobotState.homePage(),
    );
  }

  void navigateToSecondaryPage() {
    emit(const AEyeRobotState.secondaryPage());
  }
}
