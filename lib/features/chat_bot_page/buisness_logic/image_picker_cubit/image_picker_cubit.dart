import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/image_picker_cubit/image_picker_state.dart';
import 'package:a_eye_bot/features/chat_bot_page/data/repos/image_picker_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class ImagePickerCubit extends Cubit<ImagePickerState> {
  final ImagePickerRepository _imagePickerRepository;
  ImagePickerCubit(this._imagePickerRepository)
      : super(
          ImagePickerState(),
        );

  void getImageFromGallery() async {
    final pickedImage = await _imagePickerRepository.getImageFromGallery();
    if (pickedImage != null) {
      emit(ImagePickerState(image: pickedImage));
    }
  }

  void removeImage() {
    emit(
      ImagePickerState(),
    );
  }

  @override
  // ignore: must_call_super
  Future<void> close() async {}
}
