import 'dart:typed_data';
import 'package:a_eye_bot/features/chat_bot_page/data/service/image_picker_service.dart';
import 'package:injectable/injectable.dart';

@singleton
class ImagePickerRepository {
  final ImagePickerService _imagePickerService;

  ImagePickerRepository(this._imagePickerService);

  Future<Uint8List?> getImageFromGallery() async {
    return await _imagePickerService.pickImageFromGallery();
  }
}
