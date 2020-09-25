import 'dart:typed_data';

import 'package:flutter_tflite_style_transfer/services/image/image_picker_facade.dart';
import 'package:flutter_tflite_style_transfer/services/image/image_transfer_facade.dart';

class ImageFacade {
  ImagePickerFacade _imagePickerFacade = ImagePickerFacade();
  ImageTransferFacade _imageTransferFacade = ImageTransferFacade();

  Future<Uint8List> loadImage() async {
    return _imagePickerFacade.loadImage();
  }

  Future<void> loadModel() async {
    return _imageTransferFacade.loadModel();
  }

  Future<Uint8List> loadStyleImage(String styleImagePath) async {
    return _imageTransferFacade.loadStyleImage(styleImagePath);
  }

  Future<Uint8List> transfer(Uint8List originData, Uint8List styleData) async {
    return _imageTransferFacade.transfer(originData, styleData);
  }
}