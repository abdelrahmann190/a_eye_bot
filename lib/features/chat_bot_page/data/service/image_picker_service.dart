import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@singleton
class ImagePickerService {
  final ImagePicker _imagePicker = ImagePicker();

  Future<Uint8List?> pickImageFromGallery() async {
    try {
      final XFile? imageFile =
          await _imagePicker.pickImage(source: ImageSource.gallery);
      if (imageFile != null) {
        return await imageFile.readAsBytes();
      }
    } catch (e) {
      //Todo
    }
    return null;
  }
}
