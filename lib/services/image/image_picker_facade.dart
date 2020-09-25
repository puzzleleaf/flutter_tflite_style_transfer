import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';

class ImagePickerFacade {
  final ImagePicker _picker = ImagePicker();

  Future<Uint8List> loadImage() async {
    final pickedFile = await _picker.getImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      return pickedFile.readAsBytes();
    } else {
      return null;
    }
  }
}
